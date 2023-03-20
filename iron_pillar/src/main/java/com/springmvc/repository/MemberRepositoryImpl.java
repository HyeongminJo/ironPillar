package com.springmvc.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Member;

@Repository
public class MemberRepositoryImpl implements MemberRepository 
{
	private JdbcTemplate template;
	
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
		String sql = "insert into member values(?, ?, ?, ?, ?)";
		template.update(sql, member.getMemberId(), member.getMemberPw(), member.getMemberNick(), phone, address);
	}
	
	@Override //로그인
	public String[] login(String memberId, String memberPw)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		String[] result = new String[6];
		
		try 
		{
			conn = com.springmvc.database.DBConnection.getConnection();
			sql = "select * from member where memberId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				if(rs.getString("memberPw").equals(memberPw))
				{
					System.out.println("로그인 완료");
					result[0] = "1";
					result[1] = rs.getString("memberId");
					result[2] = rs.getString("memberPw");
					result[3] = rs.getString("memberNick");
					result[4] = rs.getString("memberPhone");
					result[5] = rs.getString("memberAddress");
					
					return result; // 로그인 성공
				}
				else
				{
					System.out.println("비밀번호 불일치");
					result[0] = "0";
					return result; //비밀번호 불일치
				}
			}
			else
			{
				result[0] = "-1";
				System.out.println("DB접속 실패");
				return result; // DB접속 실패
			}
		}
		catch(Exception e)
		{
			System.out.println("로그인 프로세스 오류 : " + e);
		}
		finally 
		{
			try
			{
				if(rs != null)
				{
					rs.close();
				}
				if(pstmt != null)
				{
					pstmt.close();
				}
				if(conn != null)
				{
					conn.close();
				}
			}
			catch(Exception e2)
			{
				System.out.println("로그인 프로세스 close() 예외 발생 : " + e2);
			}
		}
		System.out.println("로그인 프로세스 오류");
		return result; // 로그인 프로세스 오류
	}
	
	@Override
	public void loginCheck(String[] result, HttpSession session)
	{
		String msg = result[0];
		String memberId = result[1];
		String memberPw = result[2];
		String memberNick = result[3];
		String memberPhone = result[4];
		String memberAddress = result[5];
		session.setAttribute("msg", msg);
		session.setAttribute("memberId", memberId);
		session.setAttribute("memberPw", memberPw);
		session.setAttribute("memberNick", memberNick);
		session.setAttribute("memberPhone", memberPhone);
		session.setAttribute("memberAddress", memberAddress);
	}
}
