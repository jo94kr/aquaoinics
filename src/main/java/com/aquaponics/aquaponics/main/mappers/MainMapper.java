package com.aquaponics.aquaponics.main.mappers;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface MainMapper {
    public List<Map<String, Object>> getContentList(Map<String, Object> paramMap) throws Exception;
    public Map<String, Object> getContent(Map<String, Object> paramMap) throws Exception;
    public void insertContent(Map<String, Object> paramMap) throws Exception;
    public List<String> getFarmType() throws Exception;
    public List<String> getPlantType() throws Exception;
    public void deleteContent(Map<String, Object> paramMap) throws Exception;
}
