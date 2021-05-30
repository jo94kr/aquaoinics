package com.aquaponics.aquaponics.main.mappers;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface MainMapper {
    public List<Map<String, Object>> getContent(Map<String, Object> paramMap) throws Exception;
}
