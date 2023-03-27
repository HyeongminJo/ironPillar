package com.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.domain.Community;
import com.springmvc.domain.Item;
import com.springmvc.domain.Place;
import com.springmvc.service.HomeService;

@Controller
@RequestMapping("/")
public class homeController 
{
	@Autowired
	HomeService homeService;
	
	@GetMapping
	public ModelAndView index(Model model)
	{
		ModelAndView modelandview = new ModelAndView();
		List<Item> rankItemList = homeService.getRankItemList();
		List<Place> rankPlaceList = homeService.getRankPlaceList();
		List<Community> newCommunityList = homeService.getNewCommunityList();
		modelandview.addObject("rankItemList", rankItemList);
		modelandview.addObject("rankPlaceList", rankPlaceList);
		modelandview.addObject("newCommunityList", newCommunityList);
		modelandview.setViewName("mainPage");
		return modelandview;
	}
}
