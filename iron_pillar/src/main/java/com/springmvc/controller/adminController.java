package com.springmvc.controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.springmvc.domain.Item;

@Controller
@RequestMapping("/admin")
public class adminController 
{
	
	@GetMapping("/addItem")
	public String addItem()
	{
		return "addItem";
	}
	
	@PostMapping("/addItem")
	public String addNewItem(@ModelAttribute("NewItem") Item item)
	{
		return "redirect:/shop";
	}
	
	@GetMapping("/addPlace")
	public String addPlace()
	{
		return "addPlace";
	}
}
