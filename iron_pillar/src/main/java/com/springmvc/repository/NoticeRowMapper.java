package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Notice;


public class NoticeRowMapper implements RowMapper<Notice>
{
	public Notice mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		Notice write = new Notice();
		write.setWriter(rs.getString(1));
		write.setwNum(rs.getInt(2));
		write.setwTitle(rs.getString(3));
		write.setwDescription(rs.getString(4));
		write.setwDate(rs.getString(5));
		return write;
	}
}
