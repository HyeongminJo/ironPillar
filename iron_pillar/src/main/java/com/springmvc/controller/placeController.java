package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/place")
public class placeController 
{
	@RequestMapping
	public String placePage()
	{
		return "placePage";
	}
	
	@GetMapping("/placeItem")
	public String placeItem()
	{
		return "placeItem";
	}
}
