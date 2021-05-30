package com.aquaponics.aquaponics.main.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.aquaponics.aquaponics.main.service.MainService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/addContent", method = RequestMethod.GET)
	public String addContent() {
		return "form_elements";
	}

	@ResponseBody
	@RequestMapping(value = "/getContent", method = RequestMethod.GET)
	public List<Map<String, Object>> getContent() throws Exception {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		List<Map<String, Object>> resultList = null;
		resultList = mainService.getContent(paramMap);
		
		return resultList;
	}

}
