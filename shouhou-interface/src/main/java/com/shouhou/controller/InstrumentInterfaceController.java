package com.shouhou.controller;

import com.shouhou.dto.InstrumentInterfaceRequestDTO;
import com.shouhou.dto.InstrumentInterfaceResponseDTO;
import com.shouhou.service.InstrumentService;
import com.shouhou.util.ResponseInfoUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/instrinter")
public class InstrumentInterfaceController {

    @Autowired
    private InstrumentService instrumentService;

    @RequestMapping("/add")
    @ResponseBody
    public ResponseInfoUtil addInstrInter(InstrumentInterfaceRequestDTO request) {
        ResponseInfoUtil responseInfo = new ResponseInfoUtil();
        responseInfo.setCode(0);
        Integer integer = instrumentService.addInstrumentInterface(request);
        if (integer != 0) {
            responseInfo.setMessage("保存成功！");
        } else {
            responseInfo.setMessage("保存失败，请重新尝试！");
        }
        return responseInfo;
    }

    @RequestMapping("/getList")
    @ResponseBody
    public List<InstrumentInterfaceResponseDTO> getInstrumentInterface() {
        List<InstrumentInterfaceResponseDTO> responseDTOList = instrumentService.getInstrumentInterfaceList();
        return responseDTOList;
    }
}
