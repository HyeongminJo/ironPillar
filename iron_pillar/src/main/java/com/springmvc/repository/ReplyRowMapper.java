package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Reply;

public class ReplyRowMapper implements RowMapper<Reply>
{
	public Reply mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		Reply reply = new Reply();
		reply.setMemberNick(rs.getString(1));
		reply.setMemberLevel(rs.getInt(2));
		reply.setRno(rs.getInt(3));
		reply.setwNum(rs.getInt(4));
		reply.setContent(rs.getString(5));
		reply.setrDate(rs.getString(6));
		return reply;
	}
}
