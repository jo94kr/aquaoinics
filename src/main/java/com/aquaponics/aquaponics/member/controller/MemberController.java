package com.aquaponics.aquaponics.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.aquaponics.aquaponics.member.dto.*;
import com.aquaponics.aquaponics.member.service.MemberService;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginget() {
		return "login";
	}

	
	@RequestMapping(value="/login", method=  RequestMethod.POST)
    public String memberLogin(MemberBean mb, HttpServletRequest req,RedirectAttributes rttr) throws Exception {
        
        HttpSession session = req.getSession();
        MemberBean member = memberService.memberLogin(mb);
        
        if(member == null) {
            session.setAttribute("member", null);
            rttr.addFlashAttribute("msg", false);
        } else {
            session.setAttribute("member", member);
        }
        
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

		memberService.insertMember(mb);
		// memberService.test();
		return "redirect:login";
	}

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		
		return "main";
	}
    

}
