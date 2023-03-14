package com.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.domain.Item;
import com.springmvc.service.ItemService;

@Controller
@RequestMapping("/shop")
public class shopController 
{	
	@Autowired
	ItemService is;
	
	@GetMapping
	public ModelAndView shopPage(Model model)
	{
		ModelAndView modelandview = new ModelAndView();
		List<Item> list = is.getAllItemList();
		modelandview.addObject("itemList", list);
		modelandview.setViewName("shopPage");
		return modelandview;
	}
	
	@GetMapping("/shopItem")
	public String shopItem()
	{
		return "shopItem";
	}
}
