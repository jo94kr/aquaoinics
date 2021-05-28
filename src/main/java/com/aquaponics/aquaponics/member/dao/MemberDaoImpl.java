package com.aquaponics.aquaponics.member.dao;

import com.aquaponics.aquaponics.member.dto.MemberBean;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl extends SqlSessionDaoSupport implements IMemberDao{
    
    // @Autowired
    // public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) { 
    //     super.setSqlSessionFactory(sqlSessionFactory);
    // }

    @Override
    public void memberInsert(MemberBean mb) throws Exception{
        System.out.println("test!!!");
        // sql.insert("MemberMapper.register", mb);
        getSqlSession().insert("com.aquaponics.aquaponics.member.dao.MemberDao.register", mb);
    }
}
