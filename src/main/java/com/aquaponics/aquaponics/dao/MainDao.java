package com.aquaponics.aquaponics.dao;

import com.aquaponics.aquaponics.dto.MemberBean;

public interface MainDao {
    public void register(MemberBean mb) throws Exception;
}
