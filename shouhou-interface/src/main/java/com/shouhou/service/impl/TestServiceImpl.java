package com.shouhou.service.impl;

import com.shouhou.mapper.TestMapper;
import com.shouhou.pojo.Test;
import com.shouhou.pojo.TestExample;
import com.shouhou.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TestServiceImpl implements TestService {
    @Autowired
    private TestMapper testMapper;
    @Override
    public List<Test> getTestList() {
        TestExample testExample=new TestExample();
        List<Test> testList = testMapper.selectByExample(testExample);
        return testList;
    }
}
