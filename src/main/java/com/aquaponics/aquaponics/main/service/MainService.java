package com.aquaponics.aquaponics.main.service;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import com.aquaponics.aquaponics.main.mappers.MainMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainService {
    
    @Autowired
    public MainMapper mainMapper;

    public List<Map<String, Object>> getContentList(Map<String, Object> paramMap) throws Exception {
        List<Map<String, Object>> resultList = null;
        resultList = mainMapper.getContentList(paramMap);

        return resultList;
    }

    public Map<String, Object> getContent(Map<String, Object> paramMap) throws Exception {
        Map<String, Object> resultMap = null;
        resultMap = mainMapper.getContent(paramMap);
        
        return resultMap;
    }

    public void insertContent(Map<String, Object> paramMap) throws Exception {
        mainMapper.insertContent(paramMap);
    }
    
    public List<String> getSelectType() throws Exception {
        List<String> resultMap = new LinkedList<>();
        resultMap = mainMapper.getFarmType();

        return resultMap;
    }

    public List<String> updateContent(Map<String, Object> paramMap) throws Exception {
        List<String> resultMap = new LinkedList<>();
        // mainMapper.updateContent();

        return resultMap;
    }    

    public void deleteContent(Map<String, Object> paramMap) throws Exception {
        mainMapper.deleteContent(paramMap);
    }
}
