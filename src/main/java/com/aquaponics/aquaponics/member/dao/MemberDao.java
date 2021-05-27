package com.aquaponics.aquaponics.member.dao;

import com.aquaponics.aquaponics.member.dto.MemberBean;

import org.springframework.stereotype.Repository;

@Repository("memberDao")
public interface MemberDao {
    public void register(MemberBean mb) throws Exception;
}
