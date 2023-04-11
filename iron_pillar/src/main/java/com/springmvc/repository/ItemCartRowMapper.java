package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Item;

public class ItemCartRowMapper implements RowMapper<Item>
{
	public Item mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		Item item = new Item();
		item.setCartNum(rs.getInt(1));
		item.setItemTitle(rs.getString(2));
		item.setItemPrice(rs.getInt(3));
		item.setItemImageName(rs.getString(4));
		item.setCartId(rs.getString(5));
		item.setCartQuantity(rs.getInt(6));
		return item;
	}
}
