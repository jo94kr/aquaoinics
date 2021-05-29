package com.aquaponics.aquaponics.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.aquaponics.aquaponics.member.dto.*;
import com.aquaponics.aquaponics.member.service.MemberService;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import io.micrometer.core.ipc.http.HttpSender.Request;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	// private IMemberService memberService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginget() {
		return "login";
	}

	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberBean mb , HttpServletRequest req, RedirectAttributes rttr, Model model) throws Exception {
		HttpSession session = req.getSession();
        MemberBean member = memberService.login(mb);
        
        if(member != null) {
            session.setAttribute("id", mb.getId());
            return "redirect:/main";
        } else {
            model.addAttribute("msg", "입력하신 정보는 틀립니다.");
			return "redirect:/login";
        }

		// System.out.println("아이디 파라미터:"+mb.getId());
		// System.out.println("비밀번호 파라미터 : "+mb.getPass());
		
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

		memberService.insertMember(mb);
		// memberService.test();
		return "redirect:login";
	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		
		return "main";
	}
    

}
