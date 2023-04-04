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
		write.setwNum(rs.getInt(1));
		write.setwTitle(rs.getString(2));
		write.setwDescription(rs.getString(3));
		write.setwDate(rs.getDate(4));
		return write;
	}
}
