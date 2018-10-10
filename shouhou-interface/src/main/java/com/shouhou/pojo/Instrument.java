package com.shouhou.pojo;

import java.io.Serializable;

public class Instrument implements Serializable {
    private Integer instrumentId;

    private String instrumentName;

    private static final long serialVersionUID = 1L;

    public Integer getInstrumentId() {
        return instrumentId;
    }

    public void setInstrumentId(Integer instrumentId) {
        this.instrumentId = instrumentId;
    }

    public String getInstrumentName() {
        return instrumentName;
    }

    public void setInstrumentName(String instrumentName) {
        this.instrumentName = instrumentName == null ? null : instrumentName.trim();
    }
}