package com.shouhou.service;

import com.shouhou.dto.InstrumentInterfaceRequestDTO;
import com.shouhou.dto.InstrumentInterfaceResponseDTO;
import com.shouhou.pojo.Instrument;

import java.util.List;

/**
 * 仪器相关的服务接口
 */
public interface InstrumentService {

    public Integer addInstrumentInterface(InstrumentInterfaceRequestDTO requestDTO);

    public List<InstrumentInterfaceResponseDTO> getInstrumentInterfaceList();

    public Instrument getInstrument(Integer instrId,String instrumentName);

}
