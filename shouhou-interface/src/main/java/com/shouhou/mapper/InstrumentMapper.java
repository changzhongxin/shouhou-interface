package com.shouhou.mapper;

import com.shouhou.pojo.Instrument;
import com.shouhou.pojo.InstrumentExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InstrumentMapper {
    int countByExample(InstrumentExample example);

    int deleteByExample(InstrumentExample example);

    int deleteByPrimaryKey(Integer instrumentId);

    int insert(Instrument record);

    int insertSelective(Instrument record);

    List<Instrument> selectByExample(InstrumentExample example);

    Instrument selectByPrimaryKey(Integer instrumentId);

    int updateByExampleSelective(@Param("record") Instrument record, @Param("example") InstrumentExample example);

    int updateByExample(@Param("record") Instrument record, @Param("example") InstrumentExample example);

    int updateByPrimaryKeySelective(Instrument record);

    int updateByPrimaryKey(Instrument record);
}