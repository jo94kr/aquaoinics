package com.aquaponics.aquaponics.dao;

import com.aquaponics.aquaponics.dto.MemberBean;

import org.apache.ibatis.session.SqlSession;

public class MaindaoImpl implements MainDao{
    @Inject SqlSession sql;

    @Override
    public void register(MemberBean mb) throws Exception{
        sql.insert("MemberMapper.register", mb);
    }
}
