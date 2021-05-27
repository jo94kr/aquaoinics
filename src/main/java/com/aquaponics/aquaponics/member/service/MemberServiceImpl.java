package com.aquaponics.aquaponics.member.service;

import javax.annotation.Resource;

import com.aquaponics.aquaponics.member.dao.MemberDao;
import com.aquaponics.aquaponics.member.dto.MemberBean;

import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	@Resource(name="memberDao")
	private MemberDao memberDao;

	@Override
	public void register(MemberBean mb) throws Exception {
		
		memberDao.register(mb);
	}   
}
