package com.shouhou.controller;

import com.shouhou.pojo.Test;
import com.shouhou.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ContaminatedTestController {
    @Autowired
    private TestService testService;

    @RequestMapping("/getContaminatedTestList")
    @ResponseBody
    public List<Test> getContaminatedTestList() {
        List<Test> testList = testService.getTestList();
        return testList;
    }
}
