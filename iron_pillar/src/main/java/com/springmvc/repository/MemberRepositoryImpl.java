package com.springmvc.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.springmvc.database.DBConnection;
import com.springmvc.domain.Member;

@Repository
public class MemberRepositoryImpl implements MemberRepository 
{
	private JdbcTemplate template;
	public DBConnection dBConnection;
	
	@Autowired
	public void setJdbctemplate(DataSource dataSource)
	{
		this.template = new JdbcTemplate(dataSource);
	}
	@Override //회원가입
	public void addMember(Member member)
	{
		String phone = member.getMemberPhone1() + member.getMemberPhone2() + member.getMemberPhone3();
		String address = member.getMemberAddress() + "," + member.getMemberAddress2();
		String sql = "insert into member values(?, ?, ?, ?, ?, ?)";
		template.update(sql, member.getMemberId(), member.getMemberPw(), member.getMemberNick(), phone, address, 1);
	}
	
	@Override
	public Boolean login(HttpServletRequest request, Model model, HttpSession session)
	{
		String checkMemberId = (String) request.getParameter("memberId");
		String checkMemberPw = (String) request.getParameter("memberPw");
		String error = "아이디 또는 비밀번호를 잘못 입력했습니다.";
		String sql = "select * from member where memberId=?";
		try
		{
			Member member = template.queryForObject(sql, new MemberRowMapper(), checkMemberId);
			if((member.getMemberId() != null) && (checkMemberId.equals(member.getMemberId())) && (checkMemberPw.equals(member.getMemberPw())))
			{
				session.setAttribute("memberId", member.getMemberId());
				session.setAttribute("memberPw", member.getMemberPw());
				session.setAttribute("memberNick", member.getMemberNick());
				session.setAttribute("memberPhone", member.getMemberPhone1());
				session.setAttribute("memberAddress", member.getMemberAddress());
				session.setAttribute("memberLevel", member.getMemberLevel());
				session.setMaxInactiveInterval(86400);
				
				return true; //로그인 성공
			}
			model.addAttribute("error", error);
			model.addAttribute("memberId", checkMemberId);
			
			return false;
		}
		catch(EmptyResultDataAccessException e)
		{
			model.addAttribute("error", error);
			
			return false;
		}
	}
}
