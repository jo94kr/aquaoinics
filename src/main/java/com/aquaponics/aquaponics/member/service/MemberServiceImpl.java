package com.aquaponics.aquaponics.member.service;

import com.aquaponics.aquaponics.member.dao.MemberDao;
import com.aquaponics.aquaponics.member.dto.MemberBean;

import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	private MemberDao memberDao;

	@Override
	public void register(MemberBean mb) throws Exception {
		System.out.println("@@@@@@@@@@@@@" + mb);
		memberDao.register(mb);
	}   
}
