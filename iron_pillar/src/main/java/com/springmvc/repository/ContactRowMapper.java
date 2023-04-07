package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Contact;

public class ContactRowMapper implements RowMapper<Contact>
{
	public Contact mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		Contact contact = new Contact();
		contact.setwNum(rs.getInt(1));
		contact.setMemberId(rs.getString(2));
		contact.setMemberLevel(rs.getInt(3));
		contact.setwTitle(rs.getString(4));
		contact.setwImageName(rs.getString(5));
		contact.setwDescription(rs.getString(6));
		contact.setwDate(rs.getString(7));
		return contact;
	}
}
