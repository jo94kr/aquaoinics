package com.aquaponics.aquaponics.member.mappers;

import com.aquaponics.aquaponics.member.dto.MemberBean;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface MemberMapper {
    public void memberInsert(MemberBean mb) throws Exception;

    public String test() throws Exception;

    public MemberBean loginMember(MemberBean mb)throws Exception;;
}
