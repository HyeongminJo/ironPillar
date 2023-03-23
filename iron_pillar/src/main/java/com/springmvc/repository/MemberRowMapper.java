package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Member;

public class MemberRowMapper implements RowMapper<Member>
{
	public Member mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		Member member = new Member();
		member.setMemberId(rs.getString(1));
		member.setMemberPw(rs.getString(2));
		member.setMemberNick(rs.getString(3));
		member.setMemberPhone1(rs.getString(4));
		member.setMemberAddress(rs.getString(5));
		member.setMemberLevel(rs.getInt(6));
		return member;
	}
}
