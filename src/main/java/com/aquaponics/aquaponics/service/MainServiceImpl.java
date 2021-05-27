package com.aquaponics.aquaponics.service;

import com.aquaponics.aquaponics.dao.MainDao;
import com.aquaponics.aquaponics.dto.MemberBean;

public class MainServiceImpl {
    @Inject MainDao dao;
	
	@Override
	public void register(MemberBean mb) throws Exception {
		
		dao.register(mb);
		
	}   
}
