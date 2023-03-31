package com.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.domain.Item;
import com.springmvc.domain.Review;
import com.springmvc.service.ItemService;

@Controller
@RequestMapping("/myPage")
public class myPageController 
{
	@Autowired
	ItemService itemService;
	
	@GetMapping
	public ModelAndView myPage(HttpSession session)
	{
		ModelAndView modelandview = new ModelAndView();
		String memberId = (String) session.getAttribute("memberId");
		List<Item> wishList = itemService.getWishList(memberId);
		List<Item> cart = itemService.getCart(memberId);
		List<Item> orderList = itemService.getOrderList(memberId);
		modelandview.addObject("wishList", wishList);
		modelandview.addObject("cart", cart);
		modelandview.addObject("orderList", orderList);
		modelandview.setViewName("myPage");
		return modelandview;
	}
	
	@GetMapping("/addReview")
	public String addReview(@ModelAttribute("review") Review review, @RequestParam("itemTitle") String itemTitle)
	{
		return "addReview";
	}
	
	@PostMapping("/addReview")
	public String addNewReview(@ModelAttribute("review") Review review)
	{
		return "redirect:/myPage";
	}
}