package com.springmvc.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public String[] login(String memberId, String memberPw)
	{
		String[] result = memberRepository.login(memberId, memberPw);
		return result;
	}
	@Override
	public void loginCheck(String[] result, HttpSession session)
	{
		memberRepository.loginCheck(result, session);
	}
}
