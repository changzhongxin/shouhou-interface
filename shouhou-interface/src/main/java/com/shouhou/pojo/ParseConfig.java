package com.shouhou.pojo;

import java.io.Serializable;

public class ParseConfig implements Serializable {
    private String uuid;

    private String freeconfig;

    private String gridconfig;

    private String gridresultconfig;

    private static final long serialVersionUID = 1L;

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid == null ? null : uuid.trim();
    }

    public String getFreeconfig() {
        return freeconfig;
    }

    public void setFreeconfig(String freeconfig) {
        this.freeconfig = freeconfig == null ? null : freeconfig.trim();
    }

    public String getGridconfig() {
        return gridconfig;
    }

    public void setGridconfig(String gridconfig) {
        this.gridconfig = gridconfig == null ? null : gridconfig.trim();
    }

    public String getGridresultconfig() {
        return gridresultconfig;
    }

    public void setGridresultconfig(String gridresultconfig) {
        this.gridresultconfig = gridresultconfig == null ? null : gridresultconfig.trim();
    }
}