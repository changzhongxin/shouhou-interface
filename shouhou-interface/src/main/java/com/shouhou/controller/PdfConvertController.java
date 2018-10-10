package com.shouhou.controller;

import com.alibaba.fastjson.JSON;
import com.shouhou.dto.ConfigParamRequestDTO;
import com.shouhou.pojo.FreedomParam;
import com.shouhou.pojo.GridParam;
import com.shouhou.pojo.ParseConfig;
import com.shouhou.service.ParseConfigService;
import com.shouhou.util.HtmlToExcelUntil;
import com.shouhou.util.ResponseInfoUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

/**
 * 转换pdf文件的控制器
 *
 * @author Alex
 */
@Controller
@RequestMapping("/pdf")
public class PdfConvertController {
    @Autowired
    private ParseConfigService parseConfigService;

    @RequestMapping("/pdftohtml")
    @ResponseBody
    public ResponseInfoUtil pdftohtml(MultipartFile file, HttpServletRequest request) {
        ResponseInfoUtil responseInfo = new ResponseInfoUtil();
        String pdfName = file.getOriginalFilename();
        int lastIndex = pdfName.lastIndexOf(".pdf");
        String fileName = pdfName.substring(0, lastIndex);
        String htmlName = fileName + ".html";
        String realPath = request.getSession().getServletContext().getRealPath("/pdfhtml");
        String htmlPath = realPath + "\\" + htmlName;
        try {
            new HtmlToExcelUntil().pdftohtml(file.getBytes(), htmlPath);
            responseInfo.setCode(1);
            responseInfo.setMessage(htmlPath);
        } catch (Exception e) {
            responseInfo.setCode(0);
            responseInfo.setMessage("打开文件失败，请重新尝试！");
            e.printStackTrace();
        }
        return responseInfo;
    }

    @RequestMapping("/htmltoexcel")
    @ResponseBody
    public ResponseInfoUtil htmlToExcel(String tableHtml, String htmlPath) {
        int htmlIndex = htmlPath.lastIndexOf(".html");
        int separatorIndex = htmlPath.lastIndexOf(File.separator);
        String excelPath = htmlPath.substring(0, htmlIndex) + ".xls";
        String sheetName = htmlPath.substring(separatorIndex + 1, htmlIndex);
        ResponseInfoUtil responseInfo = new ResponseInfoUtil();
        try {
            String result = new HtmlToExcelUntil().htmlToExcel(tableHtml, sheetName, excelPath);
            if (null != result) {
                responseInfo.setMessage(result);
                responseInfo.setCode(1);
            } else {
                responseInfo.setMessage("解析失败，请重新尝试！");
                responseInfo.setCode(0);
            }
        } catch (Exception e) {
            responseInfo.setMessage("解析失败，请重新尝试！");
            responseInfo.setCode(0);
            e.printStackTrace();
        }
        return responseInfo;
    }

    @RequestMapping("/exceltohtml")
    @ResponseBody
    public ResponseInfoUtil exceltohtml(String excelPath, ConfigParamRequestDTO confParam, HttpServletRequest request) {
        String freedom = request.getParameter("freedom");
        if (null != freedom) {
            List<FreedomParam> freedomParams = JSON.parseArray(freedom, FreedomParam.class);
            confParam.setFreedomParamList(freedomParams);
        }

        String grid = request.getParameter("grid");
        if (null != grid) {
            List<GridParam> gridParams = JSON.parseArray(grid, GridParam.class);
            confParam.setGridParamList(gridParams);
        }

        try {
            ResponseInfoUtil responseInfo = new HtmlToExcelUntil().exceltohtml(excelPath, confParam);
            return responseInfo;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping("/saveConfig")
    @ResponseBody
    public void saveConfig(ParseConfig parseConfig) {
        parseConfigService.addParseConfig(parseConfig);
    }

    @RequestMapping("/getConfig")
    @ResponseBody
    public ParseConfig getConfig(String uuid) {
        ParseConfig parseConfig = parseConfigService.getParseConfig(uuid);
        return parseConfig;
    }
}
