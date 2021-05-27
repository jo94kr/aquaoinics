package com.aquaponics.aquaponics.member.dao;

import com.aquaponics.aquaponics.member.dto.MemberBean;
import org.mybatis.spring.support.SqlSessionDaoSupport;

public class MemberDaoImpl extends SqlSessionDaoSupport implements MemberDao{

    @Override
    public void register(MemberBean mb) throws Exception{
        System.out.println("test!!!");
        // sql.insert("MemberMapper.register", mb);
    }
}
