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

import com.springmvc.domain.Write;
import com.springmvc.service.WriteService;

@Controller
@RequestMapping("/community")
public class communityController 
{
	@Autowired
	WriteService writeService;
	
	@GetMapping
	public ModelAndView communityPage(Model model)
	{
		ModelAndView modelandview = new ModelAndView();
		List<Write> list = writeService.getAllWriteList();
		modelandview.addObject("writeList", list);
		modelandview.setViewName("communityPage");
		return modelandview;
	}
	
	@GetMapping("/communityItem")
	public String communityItem()
	{
		return "communityItem";
	}
	
	@GetMapping("/addWrite")
	public String addWrite(@ModelAttribute("write") Write write)
	{
		return "addWrite";
	}
	
	@PostMapping("/addWrite")
	public String addNewWrite(@ModelAttribute("write") Write write, HttpSession session)
	{
		String writer = (String) session.getAttribute("memberNick");
		Integer writerLevel = (Integer) session.getAttribute("memberLevel");
		writerLevel = writerLevel + 1;
		session.setAttribute("memberLevel", writerLevel);
		write.setMemberId(writer);
		write.setMemberLevel(writerLevel);
		MultipartFile writeImage = write.getWriteImage();
		String saveName = writeImage.getOriginalFilename();
		File saveFile = new File("D:/JHM/jsp/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/iron_pillar/resources/img", saveName);
		write.setWriteImageName(saveName);
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
		writeService.setNewWrite(write);
		return "redirect:/community";
	}
}
