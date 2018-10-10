package com.shouhou.mapper;

import com.shouhou.pojo.InstrumentInterface;
import com.shouhou.pojo.InstrumentInterfaceExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InstrumentInterfaceMapper {
    int countByExample(InstrumentInterfaceExample example);

    int deleteByExample(InstrumentInterfaceExample example);

    int deleteByPrimaryKey(String interfaceUuid);

    int insert(InstrumentInterface record);

    int insertSelective(InstrumentInterface record);

    List<InstrumentInterface> selectByExample(InstrumentInterfaceExample example);

    InstrumentInterface selectByPrimaryKey(String interfaceUuid);

    int updateByExampleSelective(@Param("record") InstrumentInterface record, @Param("example") InstrumentInterfaceExample example);

    int updateByExample(@Param("record") InstrumentInterface record, @Param("example") InstrumentInterfaceExample example);

    int updateByPrimaryKeySelective(InstrumentInterface record);

    int updateByPrimaryKey(InstrumentInterface record);
}