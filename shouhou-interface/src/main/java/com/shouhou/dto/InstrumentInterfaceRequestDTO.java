package com.shouhou.dto;

public class InstrumentInterfaceRequestDTO {
    private Integer instrId;
    private String interType;
    private String uuid;
    private String interName;
    private String instrName;
    private String filePath;

    public Integer getInstrId() {
        return instrId;
    }

    public void setInstrId(Integer instrId) {
        this.instrId = instrId;
    }

    public String getInterType() {
        return interType;
    }

    public void setInterType(String interType) {
        this.interType = interType;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getInterName() {
        return interName;
    }

    public void setInterName(String interName) {
        this.interName = interName;
    }

    public String getInstrName() {
        return instrName;
    }

    public void setInstrName(String instrName) {
        this.instrName = instrName;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }
}
