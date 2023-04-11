package com.springmvc.controller;

import java.io.File;
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
import org.springframework.web.multipart.MultipartFile;
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
		List<Review> reviewList = itemService.getReviewList(memberId);
		modelandview.addObject("wishList", wishList);
		modelandview.addObject("cart", cart);
		modelandview.addObject("orderList", orderList);
		modelandview.addObject("reviewList", reviewList);
		modelandview.setViewName("myPage");
		return modelandview;
	}
	
	@GetMapping("/addReview")
	public String addReview(@ModelAttribute("review") Review review, @RequestParam("itemTitle") String itemTitle, @RequestParam("orderDate") String orderDate, Model model)
	{
		model.addAttribute("itemTitle", itemTitle);
		model.addAttribute("orderDate", orderDate);
		return "addReview";
	}
	
	@PostMapping("/addReview")
	public String addNewReview(@ModelAttribute("review") Review review, @RequestParam("itemTitle") String itemTitle, @RequestParam("orderDate") String orderDate, HttpSession session)
	{
		Date date = new Date();
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String today = f.format(date);
		MultipartFile reviewImage = review.getReviewImage();
		String saveName = reviewImage.getOriginalFilename();
		File saveFile = new File("D:/JHM/jsp/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/iron_pillar/resources/img", saveName);
		review.setReviewImageName(saveName);
		if(reviewImage != null && !reviewImage.isEmpty())
		{
			try
			{
				reviewImage.transferTo(saveFile);
			}
			catch(Exception e)
			{
				throw new RuntimeException("이미지 업로드가 실패했습니다.", e);
			}
		}
		String member = (String) session.getAttribute("memberId");
		Integer memberLevel = (Integer) session.getAttribute("memberLevel");
		review.setReviewItemTitle(itemTitle);
		review.setReviewWriterLevel(memberLevel);
		review.setReviewWriter(member);
		review.setReviewDate(today);
		review.setOrderDate(orderDate);
		itemService.addReview(review);
		return "redirect:/myPage";
	}
	
	@GetMapping("/deleteReview")
	public String deleteReview(@RequestParam("reviewNum") int reviewNum)
	{
		itemService.deleteReview(reviewNum);
		return "redirect:/myPage";
	}
	
	@GetMapping("/deleteWish")
	public String deleteWish(@RequestParam("wishNum") int wishNum)
	{
		itemService.deleteWish(wishNum);
		return "redirect:/myPage";
	}
	
	@GetMapping("/deleteCart")
	public String deleteCart(@RequestParam("cartNum") int cartNum)
	{
		itemService.deleteCart(cartNum);
		return "redirect:/myPage";
	}
}