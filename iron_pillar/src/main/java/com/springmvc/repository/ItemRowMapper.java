package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Item;

public class ItemRowMapper implements RowMapper<Item>
{
	public Item mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		Item item = new Item();
		item.setItemTitle(rs.getString(1));
		item.setItemPrice(rs.getInt(2));
		item.setItemImageName(rs.getString(3));
		item.setItemText(rs.getString(4));
		item.setItemCategory(rs.getString(5));
		item.setItemLove(rs.getInt(6));
		return item;
	}
}
