package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/contact")
public class contactController 
{
	@RequestMapping
	public String contactPage()
	{
		return "contactPage";
	}
}
