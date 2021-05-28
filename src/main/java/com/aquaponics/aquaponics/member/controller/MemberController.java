package com.aquaponics.aquaponics.member.controller;

import com.aquaponics.aquaponics.member.dto.*;
import com.aquaponics.aquaponics.member.service.IMemberService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	@Autowired
	private IMemberService memberService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(MemberBean mb) {
		//자동으로 파라미터 가져오기 
		System.out.println("아이디 파라미터:"+mb.getId());
		System.out.println("비밀번호 파라미터 : "+mb.getPass());
		return "redirect:main";
	}


	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert() {
		return "insert";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertPost(MemberBean mb) throws Exception {
 
		System.out.println(mb.getId());
		System.out.println(mb.getPass());
		System.out.println(mb.getName());
		System.out.println(mb.getGender());

		memberService.register(mb);
		return "redirect:login";
	}

    

}
