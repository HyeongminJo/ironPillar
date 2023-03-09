package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class loginController 
{
	@RequestMapping
	public String loginPage()
	{
		return "loginPage";
	}
	
	@GetMapping("/addMember")
	public String addMember()
	{
		return "addMember";
	}
}
