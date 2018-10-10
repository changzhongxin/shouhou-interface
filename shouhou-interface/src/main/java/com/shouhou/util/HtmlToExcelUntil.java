package com.shouhou.util;

import com.shouhou.dto.ConfigParamRequestDTO;
import com.shouhou.enums.ConfigParamType;
import com.shouhou.pojo.FreedomParam;
import com.shouhou.pojo.GridParam;
import org.apache.commons.lang3.StringUtils;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.fit.pdfdom.PDFDomTree;

import java.io.*;
import java.util.List;

/**
 * 将html文本解析并转换成excel表格进行操作的工具类
 *
 * @author Alex
 */
public class HtmlToExcelUntil {
    private String colon = ":";

    public void pdftohtml(byte[] bytes, String htmlPath) throws Exception {

        PDDocument document = PDDocument.load(bytes);
        //FileWriter fileWriter = new FileWriter(htmlPath);//有乱码
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(new File(htmlPath))));//无乱码
        PDFDomTree pdfDomTree = new PDFDomTree();
        pdfDomTree.writeText(document, bw);
        bw.write("<script type=\"text/javascript\" src=\"jquery-3.2.1.js\"></script>\n" +
                "<script type=\"text/javascript\" src=\"pdfhtml.js\"></script>");
        bw.flush();
        bw.close();
        document.close();
    }

    public String htmlToExcel(String tableHtml, String sheetName, String excelPath) throws Exception {
        //创建一个新的excel文件
        Workbook wb = new HSSFWorkbook();
        //创建一个新的工作表
        Sheet sheet = wb.createSheet(sheetName);
        //通过文档助手对象解析html table文本
        Document document = DocumentHelper.parseText(tableHtml);
        Element tbody = document.getRootElement().element("tbody");
        if (null != tbody) {
            List<Element> trs = tbody.elements("tr");
            int trIndex = 0;
            for (Element tr : trs) {
                //创建新的行
                Row row = sheet.createRow(trIndex);
                List<Element> tds = tr.elements("td");
                int tdIndex = 0;
                for (Element td : tds) {
                    Cell cell = row.createCell(tdIndex);
                    String tdText = td.getText();
                    cell.setCellValue(tdText);
                    tdIndex++;
                }
                trIndex++;
            }
            FileOutputStream fileOut = new FileOutputStream(excelPath);
            wb.write(fileOut);
            fileOut.flush();
            fileOut.close();
            return excelPath;
        }
        return null;
    }

    public ResponseInfoUtil exceltohtml(String excelPath, ConfigParamRequestDTO confParam) throws Exception {
        //创建文件输入流
        InputStream is = new FileInputStream(excelPath);
        //创建POI文件管理对象
        POIFSFileSystem poisys = new POIFSFileSystem(is);
        //创建HSSF工作表对象
        HSSFWorkbook wb = new HSSFWorkbook(poisys);
        //获取工作表对象
        HSSFSheet sheet = wb.getSheetAt(0);
        StringBuffer sb = new StringBuffer();
        ResponseInfoUtil responseInfo = new ResponseInfoUtil();
        responseInfo.setCode(0);

        //添加列标识
        char c = 'A';
        short cellNum = sheet.getRow(0).getLastCellNum();
        sb.append("<tr>");
        for (int i = 0; i < cellNum; i++) {
            sb.append("<td>" + (char) (c + i) + "</td>");
        }
        sb.append("</tr>");

        //自由区域配置
        List<FreedomParam> freedomParamList = confParam.getFreedomParamList();
        if (null != freedomParamList && !freedomParamList.isEmpty()) {
            for (FreedomParam freedomParam : freedomParamList) {
                String rowMarkText = freedomParam.getRowMarkText();
                Integer rowOffset = freedomParam.getRowOffset();
                String colMarkText = freedomParam.getColMarkText();
                String fileNameMark = freedomParam.getFileNameMark();
                //如果文件名标识不为空，就执行取文件名的业务逻辑，否则执行取其他健值对的业务逻辑
                if (!StringUtils.isBlank(fileNameMark)) {
                    boolean b = false;
                    free0:
                    for (Row row : sheet) {
                        for (Cell cell : row) {
                            String cellValue = cell.getStringCellValue();
                            int end = cellValue.lastIndexOf(fileNameMark);
                            if (end != -1) {
                                int begin = cellValue.lastIndexOf(File.separator) + 1;
                                String fileName = cellValue.substring(begin, end);
                                short lastCellNum = row.getLastCellNum();
                                sb.append("<tr class=\"" + ConfigParamType.FREEDOM.getParamType() + "\"><td>" + rowMarkText + "</td><td>" + this.colon + "</td><td colspan=\"" + (lastCellNum - 1) + "\">" + fileName + "</td></tr>");
                                b = true;
                                break free0;
                            }
                        }
                    }
                    if (!b) {
                        responseInfo.setMessage("文件名标识未找到，请输入正确的文件后缀名！");
                        return responseInfo;
                    }
                } else {
                    int rowMarkTextNo = -1;
                    //循环比对行标识文本，找到之后获取标识文本所在的行号，如果有位移，则获取位移后的行号
                    free1:
                    for (Row row : sheet) {
                        for (Cell cell : row) {
                            String cellValue = cell.getStringCellValue();
                            if (rowMarkText.equals(cellValue)) {
                                rowMarkTextNo = row.getRowNum();
                                if (null != rowOffset) {
                                    rowMarkTextNo += rowOffset;
                                }
                                break free1;
                            }
                        }
                    }
                    //当比对到标识文本之后，rowMarkTextNo的值会变化，然后循环行的单元格比对列标识文本，比对成功之后添加html标签
                    if (rowMarkTextNo != -1) {
                        HSSFRow row = sheet.getRow(rowMarkTextNo);
                        short firstCellNum = row.getFirstCellNum();
                        short lastCellNum = row.getLastCellNum();
                        boolean b = true;
                        for (int j = firstCellNum; j < lastCellNum; j++) {
                            HSSFCell cell = row.getCell(j);
                            String cellValue = cell.getStringCellValue();
                            if (colMarkText.equals(cellValue) && this.colon.equals(row.getCell(j + 1).getStringCellValue())) {
                                sb.append("<tr class=\"" + ConfigParamType.FREEDOM.getParamType() + "\">");
                                sb.append("<td>" + row.getCell(j).getStringCellValue() + "</td>");
                                sb.append("<td>" + this.colon + "</td>");
                                sb.append("<td colspan=\"" + (lastCellNum - 1) + "\">" + row.getCell(j + 2).getStringCellValue() + "</td></tr>");
                                b = false;
                                break;
                            }
                        }
                        if (b) {
                            responseInfo.setMessage("自由配置列标识文本未找到或格式错误，请输入冒号前的文本重新尝试！");
                            return responseInfo;
                        }
                    } else {
                        responseInfo.setMessage("自由配置行标识文本输入错误，请输入正确的行标识文本重新尝试！");
                        return responseInfo;
                    }
                }
            }
        }

        //表格区域配置
        List<GridParam> gridParamList = confParam.getGridParamList();
        if (null != gridParamList && !gridParamList.isEmpty()) {
            for (GridParam gridParam : gridParamList) {
                Integer rowParamNo = gridParam.getRowParamNo();
                String rowMarkTextBegin = gridParam.getRowMarkTextBegin();
                String rowMarkTextEnd = gridParam.getRowMarkTextEnd();
                Integer startOffset = gridParam.getStartOffset();
                Integer endOffset = gridParam.getEndOffset();
                Integer rowMarkNo = gridParam.getRowMarkNo();
                Integer rowMarkEndNo = gridParam.getRowMarkEndNo();
                int firstRowNum = sheet.getFirstRowNum();
                int lastRowNum = sheet.getLastRowNum();
                int startTextNo = -1;
                int endTextNo = -1;
                int num1 = 1;
                int num2 = 1;
                //如果rowMarkTextEnd的值为空，就一直截取到末尾
                if (StringUtils.isBlank(rowMarkTextEnd)) {
                    endTextNo = lastRowNum;
                }
                grid:
                for (Row row : sheet) {
                    for (Cell cell : row) {
                        String cellValue = cell.getStringCellValue();
                        //比对到行标识开始的时候，startTextNo不为-1，就不在执行该业务逻辑
                        if (rowMarkTextBegin.equals(cellValue) && startTextNo == -1) {
                            startTextNo = row.getRowNum();
                            if (null != startOffset) {
                                startTextNo += startOffset;
                            }
                            //rowMarkNo的默认值是为1的，如果rowMarkNo大于1，这里将startTextNo重置为-1，继续循环寻找
                            if (null != rowMarkNo && rowMarkNo > num1) {
                                startTextNo = -1;
                                num1++;
                            }
                        }
                        //比对到行标识开始的时候，开始比对行标识结束
                        if (startTextNo != -1 && endTextNo == -1 && rowMarkTextEnd.equals(cellValue)) {
                            endTextNo = row.getRowNum();
                            if (null != endOffset) {
                                endTextNo += endOffset;
                            }
                            //rowMarkEndNo的默认值是为1的，如果rowMarkEndNo大于1，这里将endTextNo重置为-1，继续循环寻找
                            if (null != rowMarkEndNo && rowMarkEndNo > num2) {
                                endTextNo = -1;
                                num2++;
                            }
                        }
                        //开始和结束都比对上了
                        if (startTextNo != -1 && endTextNo != -1 && endTextNo >= startTextNo) {
                            firstRowNum = startTextNo;
                            lastRowNum = endTextNo + 1;
                            break grid;
                        }
                    }
                }
                if (startTextNo == -1) {
                    responseInfo.setMessage("网格配置行标识开始未能匹配到，请检查配置！");
                    return responseInfo;
                }
                if (startTextNo < sheet.getFirstRowNum()) {
                    responseInfo.setMessage("网格配置行开始位移量输入错误，请重新输入！");
                    return responseInfo;
                }
                if (endTextNo > sheet.getLastRowNum()) {
                    responseInfo.setMessage("网格配置行结束位移量输入错误，请重新输入！");
                    return responseInfo;
                }
                if (startTextNo > endTextNo) {
                    responseInfo.setMessage("网格配置行开始位置不能大于行结束位置，请重新输入！");
                    return responseInfo;
                }
                for (int i = firstRowNum; i < lastRowNum; i++) {
                    HSSFRow row = sheet.getRow(i);
                    short firstCellNum = row.getFirstCellNum();
                    short lastCellNum = row.getLastCellNum();
                    sb.append("<tr class=\"" + ConfigParamType.GRID.getParamType() + rowParamNo + "\">");
                    for (int j = firstCellNum; j < lastCellNum; j++) {
                        HSSFCell cell = row.getCell(j);
                        String cellValue = cell.getStringCellValue();
                        sb.append("<td>");
                        sb.append(cellValue);
                        sb.append("</td>");
                    }
                    sb.append("</tr>");
                }
            }
        }
        if (StringUtils.isBlank(sb.toString())) {
            responseInfo.setMessage("请先添加配置信息再尝试解析数据！");
            return responseInfo;
        } else {
            responseInfo.setCode(1);
            responseInfo.setMessage(sb.toString());
            return responseInfo;
        }
    }
}
