package com.shouhou.mapper;

import com.shouhou.pojo.ParseConfig;
import com.shouhou.pojo.ParseConfigExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ParseConfigMapper {
    int countByExample(ParseConfigExample example);

    int deleteByExample(ParseConfigExample example);

    int deleteByPrimaryKey(String uuid);

    int insert(ParseConfig record);

    int insertSelective(ParseConfig record);

    List<ParseConfig> selectByExample(ParseConfigExample example);

    ParseConfig selectByPrimaryKey(String uuid);

    int updateByExampleSelective(@Param("record") ParseConfig record, @Param("example") ParseConfigExample example);

    int updateByExample(@Param("record") ParseConfig record, @Param("example") ParseConfigExample example);

    int updateByPrimaryKeySelective(ParseConfig record);

    int updateByPrimaryKey(ParseConfig record);
}