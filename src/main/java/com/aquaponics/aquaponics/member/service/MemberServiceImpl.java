package com.aquaponics.aquaponics.member.service;

import com.aquaponics.aquaponics.member.dao.IMemberDao;
import com.aquaponics.aquaponics.member.dto.MemberBean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements IMemberService {
	@Autowired
	private IMemberDao memberDao;

	@Override
	public void register(MemberBean mb) throws Exception {
		System.out.println("@@@@@@@@@@@@@" + mb);
		memberDao.memberInsert(mb);
	}   
}
