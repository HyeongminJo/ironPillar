package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice")
public class noticeController 
{
	@RequestMapping
	public String noticePage()
	{
		return "noticePage";
	}
}
