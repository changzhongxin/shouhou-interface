package com.shouhou.pojo;

import java.io.Serializable;

public class InstrumentInterface implements Serializable {
    private String interfaceUuid;

    private String interfaceName;

    private String interfaceFilepath;

    private Integer instrumentId;

    private String interfaceType;

    private static final long serialVersionUID = 1L;

    public String getInterfaceUuid() {
        return interfaceUuid;
    }

    public void setInterfaceUuid(String interfaceUuid) {
        this.interfaceUuid = interfaceUuid == null ? null : interfaceUuid.trim();
    }

    public String getInterfaceName() {
        return interfaceName;
    }

    public void setInterfaceName(String interfaceName) {
        this.interfaceName = interfaceName == null ? null : interfaceName.trim();
    }

    public String getInterfaceFilepath() {
        return interfaceFilepath;
    }

    public void setInterfaceFilepath(String interfaceFilepath) {
        this.interfaceFilepath = interfaceFilepath == null ? null : interfaceFilepath.trim();
    }

    public Integer getInstrumentId() {
        return instrumentId;
    }

    public void setInstrumentId(Integer instrumentId) {
        this.instrumentId = instrumentId;
    }

    public String getInterfaceType() {
        return interfaceType;
    }

    public void setInterfaceType(String interfaceType) {
        this.interfaceType = interfaceType == null ? null : interfaceType.trim();
    }
}