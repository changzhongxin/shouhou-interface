package com.shouhou.enums;

/**
 * 配置的参数类型
 */
public enum ConfigParamType {
    FREEDOM("freedom", 1), GRID("grid", 2), GRIDRESULT("gridResult", 3);

    private String paramType;
    private Integer index;

    ConfigParamType(String paramType, Integer index) {
        this.paramType = paramType;
        this.index = index;
    }

    public String getParamType() {
        return paramType;
    }

    public void setParamType(String paramType) {
        this.paramType = paramType;
    }

    public Integer getIndex() {
        return index;
    }

    public void setIndex(Integer index) {
        this.index = index;
    }
}
