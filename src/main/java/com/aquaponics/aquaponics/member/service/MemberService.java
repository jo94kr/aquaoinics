package com.aquaponics.aquaponics.member.service;

import java.lang.reflect.Member;

import com.aquaponics.aquaponics.member.dto.MemberBean;
import com.aquaponics.aquaponics.member.mappers.MemberMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
    
    @Autowired
    public MemberMapper memberMapper;

    public void insertMember(MemberBean mb) throws Exception {
        memberMapper.memberInsert(mb);
    }

    public void test() throws Exception{
        System.out.println(memberMapper.test());
    }
    public MemberBean login(MemberBean mb) throws Exception{
        return memberMapper.login(mb);
    }
}
