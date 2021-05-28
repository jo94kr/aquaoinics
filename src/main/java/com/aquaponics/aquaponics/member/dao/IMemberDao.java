package com.aquaponics.aquaponics.member.dao;

import com.aquaponics.aquaponics.member.dto.MemberBean;

public interface IMemberDao {
    public void memberInsert(MemberBean mb) throws Exception;
}
