package com.shouhou.service;

import com.shouhou.pojo.ParseConfig;

public interface ParseConfigService {

    public Integer addParseConfig(ParseConfig parseConfig);

    public ParseConfig getParseConfig(String uuid);

}
