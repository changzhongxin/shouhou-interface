package com.shouhou.service.impl;

import com.shouhou.mapper.ParseConfigMapper;
import com.shouhou.pojo.ParseConfig;
import com.shouhou.service.ParseConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ParseConfigServiceImpl implements ParseConfigService {
    @Autowired
    private ParseConfigMapper parseConfigMapper;

    @Override
    public Integer addParseConfig(ParseConfig parseConfig) {
        ParseConfig parseConfig1 = this.getParseConfig(parseConfig.getUuid());
        int i = 0;
        if (null == parseConfig1) {
            i = parseConfigMapper.insert(parseConfig);
        } else {
            i = parseConfigMapper.updateByPrimaryKey(parseConfig);
        }
        return i;
    }

    @Override
    public ParseConfig getParseConfig(String uuid) {
        ParseConfig parseConfig = parseConfigMapper.selectByPrimaryKey(uuid);
        return parseConfig;
    }
}
