package com.shouhou.service.impl;

import com.shouhou.dto.InstrumentInterfaceRequestDTO;
import com.shouhou.dto.InstrumentInterfaceResponseDTO;
import com.shouhou.mapper.InstrumentInterfaceMapper;
import com.shouhou.mapper.InstrumentMapper;
import com.shouhou.pojo.Instrument;
import com.shouhou.pojo.InstrumentExample;
import com.shouhou.pojo.InstrumentInterface;
import com.shouhou.pojo.InstrumentInterfaceExample;
import com.shouhou.service.InstrumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class InstrumentServiceImpl implements InstrumentService {
    @Autowired
    private InstrumentMapper instrumentMapper;

    @Autowired
    private InstrumentInterfaceMapper instrumentInterfaceMapper;


    @Override
    public Integer addInstrumentInterface(InstrumentInterfaceRequestDTO request) {
        Integer instrId = request.getInstrId();
        String instrName = request.getInstrName();
        Instrument instrument = this.getInstrument(instrId, instrName);
        InstrumentInterface instrumentInterface = new InstrumentInterface();
        if (null == instrument) {
            Instrument instrument1 = new Instrument();
            instrument1.setInstrumentName(instrName);
            instrumentMapper.insert(instrument1);
            instrumentInterface.setInstrumentId(instrument1.getInstrumentId());
        } else {
            instrumentInterface.setInstrumentId(instrument.getInstrumentId());
        }
        instrumentInterface.setInterfaceFilepath(request.getFilePath());
        instrumentInterface.setInterfaceName(request.getInterName());
        instrumentInterface.setInterfaceType(request.getInterType());
        instrumentInterface.setInterfaceUuid(request.getUuid());
        InstrumentInterface instrumentInterface1 = instrumentInterfaceMapper.selectByPrimaryKey(request.getUuid());
        int i = 0;
        if (instrumentInterface1 != null) {
            i = instrumentInterfaceMapper.updateByPrimaryKey(instrumentInterface);
        } else {
            i = instrumentInterfaceMapper.insert(instrumentInterface);
        }
        return i;
    }

    @Override
    public List<InstrumentInterfaceResponseDTO> getInstrumentInterfaceList() {
        InstrumentInterfaceExample instrumentInterfaceExample = new InstrumentInterfaceExample();
        List<InstrumentInterface> instrumentInterfaceList = instrumentInterfaceMapper.selectByExample(instrumentInterfaceExample);
        List<InstrumentInterfaceResponseDTO> responseDTOList = new ArrayList<>();
        for (InstrumentInterface i : instrumentInterfaceList) {
            InstrumentInterfaceResponseDTO responseDTO = new InstrumentInterfaceResponseDTO();
            Integer instrumentId = i.getInstrumentId();
            Instrument instrument = instrumentMapper.selectByPrimaryKey(instrumentId);
            responseDTO.setInstrId(instrument.getInstrumentId());
            responseDTO.setInstrName(instrument.getInstrumentName());
            responseDTO.setUuid(i.getInterfaceUuid());
            responseDTO.setInterType(i.getInterfaceType());
            responseDTO.setFilePath(i.getInterfaceFilepath());
            responseDTO.setInterName(i.getInterfaceName());
            responseDTOList.add(responseDTO);
        }
        return responseDTOList;
    }

    @Override
    public Instrument getInstrument(Integer instrId, String instrumentName) {
        Instrument instrument = null;
        if (null != instrId) {
            instrument = instrumentMapper.selectByPrimaryKey(instrId);
        }
        if (null == instrument) {
            InstrumentExample instrumentExample = new InstrumentExample();
            InstrumentExample.Criteria criteria = instrumentExample.createCriteria();
            criteria.andInstrumentNameEqualTo(instrumentName);
            List<Instrument> instruments = instrumentMapper.selectByExample(instrumentExample);
            if (!instruments.isEmpty()) {
                instrument = instruments.get(0);
            }
        }
        return instrument;
    }

}
