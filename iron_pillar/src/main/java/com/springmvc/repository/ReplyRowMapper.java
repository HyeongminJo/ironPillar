package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Reply;

public class ReplyRowMapper implements RowMapper<Reply>
{
	public Reply mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		System.out.println("문제3");
		Reply reply = new Reply();
		reply.setRno(rs.getInt(1));
		reply.setwNum(rs.getInt(2));
		reply.setContent(rs.getString(3));
		reply.setrDate(rs.getDate(4));
		return reply;
	}
}
