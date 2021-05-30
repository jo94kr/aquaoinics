package com.aquaponics.aquaponics.main.service;

import java.util.List;
import java.util.Map;

import com.aquaponics.aquaponics.main.mappers.MainMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainService {
    
    @Autowired
    public MainMapper mainMapper;

    public List<Map<String, Object>> getContent(Map<String, Object> paramMap) throws Exception {
        List<Map<String, Object>> resultList = null;
        resultList = mainMapper.getContent(paramMap);

        return resultList;
    }

}
