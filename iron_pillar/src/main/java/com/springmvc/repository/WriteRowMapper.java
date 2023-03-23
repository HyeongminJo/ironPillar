package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Write;

public class WriteRowMapper implements RowMapper<Write> 
{
	public Write mapRow(ResultSet rs, int rewNum) throws SQLException
	{
		Write write = new Write();
		write.setWriteTitle(rs.getString(2));
		write.setWriteImageName(rs.getString(3));
		write.setWriteText(rs.getString(4));
		write.setMemberId(rs.getString(5));
		write.setMemberLevel(rs.getInt(6));
		return write;
	}
}
