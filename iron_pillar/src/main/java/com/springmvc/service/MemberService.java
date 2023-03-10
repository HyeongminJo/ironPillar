package com.springmvc.service;

import javax.servlet.http.HttpSession;

import com.springmvc.domain.Member;

public interface MemberService 
{
	//회원가입
	public void addMember(Member member);
	
	//로그인
	public String[] login(String memberId, String memberPw);
	public void loginCheck(String[] result, HttpSession session);
}
