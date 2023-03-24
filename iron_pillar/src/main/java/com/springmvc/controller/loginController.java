package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.domain.Member;
import com.springmvc.service.MemberService;

@Controller
@RequestMapping("/login")
public class loginController 
{
	@Autowired
	private MemberService memberService;
	
	@RequestMapping
	public String loginPage()
	{
		return "loginPage";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) throws Exception
	{
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/login";
	}
	
	@GetMapping("/addMember")
	public String addMember()
	{
		return "addMember";
	}
	
	//회원가입 프로세스
	@PostMapping("/processAddMember")
	public String processAddMember(@ModelAttribute("NewMember") Member member)
	{
		memberService.addMember(member);
		return "redirect:/login";
	}
	
	//로그인 프로세스
	@PostMapping("/processLogin") //로그인 기능
	public String submitlogin(HttpServletRequest request, Model model, HttpSession session)
	{
		Boolean result = memberService.login(request, model, session);
		if(result)
		{
			return "redirect:/";
		}
		return "loginPage";
	}
}
