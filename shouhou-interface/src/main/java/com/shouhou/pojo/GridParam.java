package com.shouhou.pojo;

/**
 * 网格区域参数配置实体类
 */
public class GridParam {
    //行配置编号
    private Integer rowParamNo;
    //行标识开始
    private String rowMarkTextBegin;
    //行标识结束
    private String rowMarkTextEnd;
    //行开始位移量
    private Integer startOffset;
    //行结束位移量
    private Integer endOffset;
    //行标识开始编号
    private Integer rowMarkNo;
    //行标识结束编号
    private Integer rowMarkEndNo;

    public Integer getRowParamNo() {
        return rowParamNo;
    }

    public void setRowParamNo(Integer rowParamNo) {
        this.rowParamNo = rowParamNo;
    }

    public String getRowMarkTextBegin() {
        return rowMarkTextBegin;
    }

    public void setRowMarkTextBegin(String rowMarkTextBegin) {
        this.rowMarkTextBegin = rowMarkTextBegin;
    }

    public String getRowMarkTextEnd() {
        return rowMarkTextEnd;
    }

    public void setRowMarkTextEnd(String rowMarkTextEnd) {
        this.rowMarkTextEnd = rowMarkTextEnd;
    }

    public Integer getStartOffset() {
        return startOffset;
    }

    public void setStartOffset(Integer startOffset) {
        this.startOffset = startOffset;
    }

    public Integer getEndOffset() {
        return endOffset;
    }

    public void setEndOffset(Integer endOffset) {
        this.endOffset = endOffset;
    }

    public Integer getRowMarkNo() {
        return rowMarkNo;
    }

    public void setRowMarkNo(Integer rowMarkNo) {
        this.rowMarkNo = rowMarkNo;
    }

    public Integer getRowMarkEndNo() {
        return rowMarkEndNo;
    }

    public void setRowMarkEndNo(Integer rowMarkEndNo) {
        this.rowMarkEndNo = rowMarkEndNo;
    }
}
