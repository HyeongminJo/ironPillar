package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Contact;

public class ContactRowMapper implements RowMapper<Contact>
{
	public Contact mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		Contact write = new Contact();
		write.setwNum(rs.getInt(1));
		write.setwTitle(rs.getString(2));
		write.setwImageName(rs.getString(3));
		write.setwDescription(rs.getString(4));
		write.setwDate(rs.getDate(5));
		return write;
	}
}
