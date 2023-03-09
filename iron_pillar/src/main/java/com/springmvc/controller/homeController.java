package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class homeController 
{
	@RequestMapping
	public String index()
	{
		return "mainPage";
	}
	
	@GetMapping("/main")
	public String mainPage()
	{
		return "mainPage";
	}
}
