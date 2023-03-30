package com.springmvc.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.domain.Item;
import com.springmvc.service.ItemService;

@Controller
@RequestMapping("/shop")
public class shopController 
{	
	@Autowired
	ItemService itemService;
	
	@GetMapping
	public ModelAndView shopPage(Model model)
	{
		ModelAndView modelandview = new ModelAndView();
		List<Item> list = itemService.getAllItemList();
		modelandview.addObject("itemList", list);
		modelandview.setViewName("shopPage");
		return modelandview;
	}
	
	@GetMapping("/shopItem")
	public String shopItem(@RequestParam("itemTitle") String itemTitle, Model model)
	{
		Item item = itemService.getItemByTitle(itemTitle);
		model.addAttribute("item", item);
		return "shopItem";
	}
	
	@GetMapping("/itemLove")
	public String itemLove(@RequestParam("loveItemTitle") String itemTitle, Model model, HttpSession session)
	{
		String lover = (String) session.getAttribute("memberId");
		itemService.itemLove(itemTitle, lover);
		Item item = itemService.getItemByTitle(itemTitle);
		model.addAttribute("item", item);
		return "shopItem";
	}
	
	@GetMapping("/toCart")
	public String toCart(@RequestParam("itemTitle") String itemTitle, @RequestParam("quantity") int quantity, Model model, HttpSession session)
	{
		String member = (String) session.getAttribute("memberId");
		itemService.toCart(itemTitle, quantity, member);
		Item item = itemService.getItemByTitle(itemTitle);
		model.addAttribute("item", item);
		return "shopItem";
	}
	
	@GetMapping("/toCart2")
	public String toCart2(@RequestParam("itemTitle") String itemTitle, @RequestParam("itemQuantity") int quantity, Model model, HttpSession session)
	{
		String member = (String) session.getAttribute("memberId");
		itemService.toCart(itemTitle, quantity, member);
		return "redirect:/myPage";
	}
	
	@GetMapping("/orderItem")
	public String orderItem(@RequestParam("itemTitle") String itemTitle, @RequestParam("quantity") int quantity, Model model, HttpSession session)
	{
		Date date = new Date();
		SimpleDateFormat f = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
		String today = f.format(date);
		String orderer = (String) session.getAttribute("memberId");
		itemService.orderItem(itemTitle, quantity, orderer, today);
		Item item = itemService.getItemByTitle(itemTitle);
		model.addAttribute("item", item);
		return "shopItem";
	}
	
	@GetMapping("/orderItem2")
	public String orderItem2(@RequestParam("itemTitle") String itemTitle, @RequestParam("itemQuantity") int quantity, Model model, HttpSession session)
	{
		Date date = new Date();
		SimpleDateFormat f = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
		String today = f.format(date);
		String orderer = (String) session.getAttribute("memberId");
		itemService.orderItem(itemTitle, quantity, orderer, today);
		return "redirect:/myPage";
	}
}
