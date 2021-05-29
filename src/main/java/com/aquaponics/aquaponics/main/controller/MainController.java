package com.aquaponics.aquaponics.main.controller;

import com.aquaponics.aquaponics.main.service.MainService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;

	@RequestMapping(value = "/tableData", method = RequestMethod.GET)
	public String index() {
		return "table_datatables";
	}
	

}
