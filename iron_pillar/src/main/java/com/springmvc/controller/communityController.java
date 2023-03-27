package com.springmvc.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.domain.Community;
import com.springmvc.service.CommunityService;

@Controller
@RequestMapping("/community")
public class communityController 
{
	@Autowired
	CommunityService communityService;
	
	
	@GetMapping
	public ModelAndView communityPage(Model model)
	{
		ModelAndView modelandview = new ModelAndView();
		List<Community> list = communityService.getAllCommunityList();
		modelandview.addObject("communityList", list);
		modelandview.setViewName("communityPage");
		return modelandview;
	}
	
	@GetMapping("/communityItem")
	public String communityItem()
	{
		return "communityItem";
	}
	
	@GetMapping("/addCommunity")
	public String addCommunity(@ModelAttribute("community") Community community)
	{
		return "addCommunity";
	}
	
	@PostMapping("/addCommunity")
	public String addNewCommunity(@ModelAttribute("community") Community community, HttpSession session)
	{
		String writer = (String) session.getAttribute("memberNick");
		Integer writerLevel = (Integer) session.getAttribute("memberLevel");
		writerLevel = writerLevel + 1;
		if(writerLevel > 999)
		{
			writerLevel = 999;
		}
		session.setAttribute("memberLevel", writerLevel);
		community.setCommunityWriter(writer);
		community.setCommunityWriterLevel(writerLevel);
		MultipartFile writeImage = community.getCommunityImage();
		String saveName = writeImage.getOriginalFilename();
		File saveFile = new File("D:/JHM/jsp/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/iron_pillar/resources/img", saveName);
		community.setCommunityImageName(saveName);
		if(writeImage != null && !writeImage.isEmpty())
		{
			try
			{
				writeImage.transferTo(saveFile);
			}
			catch(Exception e)
			{
				throw new RuntimeException("게시글 이미지 업로드가 실패했습니다.", e);
			}
		}
		communityService.setNewCommunity(community);
		return "redirect:/community";
	}
}
