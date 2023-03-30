package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Community;

public class CommunityRowMapper  implements RowMapper<Community> 
{
	public Community mapRow(ResultSet rs, int rewNum) throws SQLException
	{
		Community community = new Community();
		community.setCommunityNum(rs.getInt(1));
		community.setCommunityTitle(rs.getString(2));
		community.setCommunityImageName(rs.getString(3));
		community.setCommunityText(rs.getString(4));
		community.setCommunityWriter(rs.getString(5));
		community.setCommunityWriterLevel(rs.getInt(6));
		community.setCommunityDate(rs.getString(7));
		return community;
	}
}
