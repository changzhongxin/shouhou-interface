package com.shouhou.dto;

import com.shouhou.pojo.FreedomParam;
import com.shouhou.pojo.GridParam;

import java.util.List;

/**
 * 传递配置参数的dto
 *
 * @author Alex
 */
public class ConfigParamRequestDTO {
    //自由区域配置参数实体类集合
    private List<FreedomParam> freedomParamList;
    //网格区域配置参数实体类集合
    private List<GridParam> gridParamList;

    public List<FreedomParam> getFreedomParamList() {
        return freedomParamList;
    }

    public void setFreedomParamList(List<FreedomParam> freedomParamList) {
        this.freedomParamList = freedomParamList;
    }

    public List<GridParam> getGridParamList() {
        return gridParamList;
    }

    public void setGridParamList(List<GridParam> gridParamList) {
        this.gridParamList = gridParamList;
    }

}
