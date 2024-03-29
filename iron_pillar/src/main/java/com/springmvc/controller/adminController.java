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
import com.springmvc.domain.Place;
import com.springmvc.service.ItemService;
import com.springmvc.service.PlaceService;

@Controller
@RequestMapping("/admin")
public class adminController 
{
	@Autowired
	private ItemService itemService;
	@Autowired
	private PlaceService placeService;
	
	@GetMapping("/addItem")
	public String addItem(@ModelAttribute("item") Item item)
	{
		return "addItem";
	}
	
	@PostMapping("/addItem")
	public String addNewItem(@ModelAttribute("item") Item item)
	{
		MultipartFile itemImage = item.getItemImage();
		String saveName = itemImage.getOriginalFilename();
		File saveFile = new File("C:/Users/형민/Documents/GitHub/ironPillar/iron_pillar/src/main/webapp/resources/img", saveName);
		item.setItemImageName(saveName);
		if(itemImage != null && !itemImage.isEmpty())
		{
			try
			{
				itemImage.transferTo(saveFile);
			}
			catch(Exception e)
			{
				throw new RuntimeException("상품 이미지 업로드가 실패했습니다.", e);
			}
		}
		itemService.setNewItem(item);
		return "redirect:/shop";
	}
	
	@GetMapping("/addPlace")
	public String addPlace(@ModelAttribute("place") Place place)
	{
		return "addPlace";
	}
	
	@PostMapping("/addPlace")
	public String addNewPlace(@ModelAttribute("place") Place place)
	{
		MultipartFile placeImage = place.getPlaceImage();
		String saveName = placeImage.getOriginalFilename();
		File saveFile = new File("C:/Users/형민/Documents/GitHub/ironPillar/iron_pillar/src/main/webapp/resources/img", saveName);
		place.setPlaceImageName(saveName);
		if(placeImage != null && !placeImage.isEmpty())
		{
			try
			{
				placeImage.transferTo(saveFile);
			}
			catch(Exception e)
			{
				throw new RuntimeException("캠핑장 이미지 업로드가 실패했습니다.", e);
			}
		}
		placeService.setNewPlace(place);
		return "redirect:/place";
	}
}
