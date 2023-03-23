package com.springmvc.repository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.springmvc.domain.Member;

public interface MemberRepository 
{
	//회원가입
	public void addMember(Member member);
	
	//로그인
	public Boolean login(HttpServletRequest request, Model model, HttpSession session);
}
