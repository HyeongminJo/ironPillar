package com.springmvc.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.domain.Criteria;
import com.springmvc.domain.Notice;
import com.springmvc.domain.PageMake;
import com.springmvc.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class noticeController 
{
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping
	public String NoticePage(Criteria cri, Model model) throws Exception
	{
		int PageList = noticeService.noticeListCnt();
		//전체 글 개수 가져오기
		
		PageMake pagemake = new PageMake();
		pagemake.setCri(cri);
		pagemake.setTotalCount(PageList);
		
		List<Map<String, Object>> list = noticeService.noticeList(cri);

		model.addAttribute("list", list);
		model.addAttribute("page", pagemake);

		return "noticePage";
	}
	
	@GetMapping("{num}")
	public String NoticePage(@PathVariable int num,Criteria cri, Model model) throws Exception
	{
		int PageList = noticeService.noticeListCnt();
		//전체 글 개수 가져오기
		
		PageMake pagemake = new PageMake();
		cri.setPage(num);
		pagemake.setCri(cri);
		pagemake.setTotalCount(PageList);
		
		List<Map<String, Object>> list = noticeService.noticeList(cri);

		model.addAttribute("list", list);
		model.addAttribute("page", pagemake);

		return "noictePage";
	}
	
	@GetMapping("/addNotice") // 글쓰기 클릭시 매핑
	public String writePage(@ModelAttribute("write") Notice write) {
		return "addNotice";
	}
	
	@PostMapping("/addNotice")
	public String Newwrite(@ModelAttribute("write") Notice write) {
		noticeService.setNewWrite(write);
		return "redirect:/notice";
	}
	
	@GetMapping("/noticeItem/{wNum}")
	public String noitceWriteItem(@PathVariable int wNum, Model model)
	{
		Notice write = noticeService.getWriteBywNum(wNum);
		model.addAttribute("write", write);
		return "noitceItem";
	}
}
