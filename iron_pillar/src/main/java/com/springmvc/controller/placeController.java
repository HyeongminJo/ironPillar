package com.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.domain.Place;
import com.springmvc.service.PlaceService;

@Controller
@RequestMapping("/place")
public class placeController 
{
	@Autowired
	PlaceService placeService;
	
	@GetMapping
	public ModelAndView placePage(Model model)
	{
		ModelAndView modelandview = new ModelAndView();
		List<Place> list = placeService.getAllPlaceList();
		modelandview.addObject("placeList", list);
		modelandview.setViewName("placePage");
		return modelandview;
	}
	
	@GetMapping("/placeItem")
	public String placeItem(@RequestParam("placeTitle") String placeTitle, Model model)
	{
		Place place = placeService.getPlaceByTitle(placeTitle);
		model.addAttribute("place", place);
		return "placeItem";
	}
}
