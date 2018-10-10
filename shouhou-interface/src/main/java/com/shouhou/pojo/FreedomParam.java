package com.shouhou.pojo;

/**
 * 自由区域配置参数实体类
 */
public class FreedomParam {
    //行标识文本
    private String rowMarkText;
    //行位移量
    private Integer rowOffset;
    //列标识文本
    private String  colMarkText;
    //文件名标识
    private String fileNameMark;

    public String getRowMarkText() {
        return rowMarkText;
    }

    public void setRowMarkText(String rowMarkText) {
        this.rowMarkText = rowMarkText;
    }

    public Integer getRowOffset() {
        return rowOffset;
    }

    public void setRowOffset(Integer rowOffset) {
        this.rowOffset = rowOffset;
    }

    public String getColMarkText() {
        return colMarkText;
    }

    public void setColMarkText(String colMarkText) {
        this.colMarkText = colMarkText;
    }

    public String getFileNameMark() {
        return fileNameMark;
    }

    public void setFileNameMark(String fileNameMark) {
        this.fileNameMark = fileNameMark;
    }
}
