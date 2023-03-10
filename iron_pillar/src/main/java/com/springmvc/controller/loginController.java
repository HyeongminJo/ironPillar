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
	private MemberService memberSerivce;
	
	@RequestMapping
	public String loginPage()
	{
		return "loginPage";
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
		memberSerivce.addMember(member);
		return "redirect:/login";
	}
	
	//로그인 프로세스
	@PostMapping("/processLogin") //로그인 기능
	public String submitlogin(HttpServletRequest request, Model model, HttpSession session){
		System.out.println("로그인기능을 실행합니다");
		String[] result = memberSerivce.login(request.getParameter("memberId"),request.getParameter("memberPw"));      
		memberSerivce.loginCheck(result, session);
		return "mainPage";
	}
}
