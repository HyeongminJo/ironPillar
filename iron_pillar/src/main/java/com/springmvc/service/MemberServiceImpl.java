package com.springmvc.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.springmvc.domain.Member;
import com.springmvc.repository.MemberRepository;

@Service
public class MemberServiceImpl implements MemberService 
{
	@Autowired
	private MemberRepository memberRepository;
	
	@Override //회원가입
	public void addMember(Member member)
	{
		memberRepository.addMember(member);
	}
	
	@Override //로그인
	public Boolean login(HttpServletRequest request, Model model, HttpSession session)
	{
		Boolean result = memberRepository.login(request, model, session);
		return result;
	}
}
