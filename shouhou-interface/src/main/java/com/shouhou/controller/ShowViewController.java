package com.shouhou.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 转发页面的控制器
 *
 * @author Alex
 */
@Controller
public class ShowViewController {

    @RequestMapping("/")
    public String showLoginJsp() {
        return "login";
    }

    @RequestMapping("/index")
    public String showIndexJsp() {
        return "index";
    }

    @RequestMapping("/analysis")
    public String showAnalysisJsp() {
        return "analysis";
    }

    @RequestMapping("/task")
    public String showTaskJsp() {
        return "task";
    }

    @RequestMapping("/file")
    public String showFileJsp() {
        return "file";
    }

    @RequestMapping("/parsePdf")
    public String showParsePdfDataJsp() {
        return "parsePdf";
    }

    @RequestMapping("/demo")
    public String showDemoJsp() {
        return "demo";
    }

    @RequestMapping("/template")
    public String showTemplateJsp() {
        return "template";
    }

    @RequestMapping("/interface")
    public String showInterfaceJsp() {
        return "interface";
    }

    @RequestMapping("/select_the_template")
    public String showSelectTheTemplate() {
        return "select_the_template";
    }

    @RequestMapping("/record_entry")
    public String showRecordEntry() {
        return "record_entry";
    }

    @RequestMapping("/contaminated")
    public String showContaminatedJsp() {
        return "contaminated";
    }

    @RequestMapping("/contaminated-new")
    public String showcontaminated_new() {
        return "contaminated-new";
    }

    @RequestMapping("/contaminated1_1")
    public String showcontaminated1_1() {
        return "contaminated1-1";
    }

    @RequestMapping("/contaminated1_2")
    public String showcontaminated1_2() {
        return "contaminated1-2";
    }

    @RequestMapping("/contaminated2_2")
    public String showcontaminated2_2() {
        return "contaminated2-2";
    }

    @RequestMapping("/monitoring_data")
    public String showmonitoring_data() {
        return "monitoring_data";
    }

    @RequestMapping("/number")
    public String shownumber() {
        return "number";
    }

    @RequestMapping("/personnel")
    public String showpersonnel() {
        return "personnel";
    }

    @RequestMapping("/project")
    public String showproject() {
        return "project";
    }

    @RequestMapping("/register")
    public String showregister() {
        return "register";
    }

    @RequestMapping("/sample")
    public String showsample() {
        return "sample";
    }

}
