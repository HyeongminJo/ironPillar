package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/community")
public class communityController 
{
	@RequestMapping
	public String communityPage()
	{
		return "communityPage";
	}
	
	@GetMapping("/communityItem")
	public String communityItem()
	{
		return "communityItem";
	}
}
