package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Item;

@Repository
public class ItemRepositoryImpl implements ItemRepository 
{
	private JdbcTemplate template;
	
	public List<Item> itemList = new ArrayList<Item>();
	
	@Autowired
	public void setJdbctemplate(DataSource dataSource)
	{
		this.template = new JdbcTemplate(dataSource);
	}
	
	public List<Item> getAllItemList()
	{
		String sql = "select * from item";
		List<Item> listOfItems = template.query(sql, new ItemRowMapper());
		this.itemList = listOfItems;
		return listOfItems;
	}
	
	public void setNewItem(Item item)
	{
		String sql = "insert into item (itemTitle, itemPrice, itemImage, itemText, itemCategory) values(?, ?, ?, ?, ?)";
		template.update(sql, item.getItemTitle(), item.getItemPrice(), item.getItemImageName(), item.getItemText(), item.getItemCategory());
	}
	
	public Item getItemByTitle(String itemTitle)
	{
		String sql = "select * from item where itemTitle=?";
		Item item = template.queryForObject(sql, new ItemRowMapper(), itemTitle);
		return item;
	}
	
	public void itemLove(String itemTitle, String lover)
	{
		String selectSql = "select * from item where itemTitle=?";
		Item item = template.queryForObject(selectSql, new ItemRowMapper(), itemTitle);
		int loves = item.getItemLove();
		loves = loves + 1;
		String updateSql = "update item set itemLove=? where itemTitle=?";
		template.update(updateSql, loves, itemTitle);
		String insertSql = "insert into itemLove (itemTitle, itemPrice, itemImage, itemLover) values(?, ?, ?, ?)";
		template.update(insertSql, item.getItemTitle(), item.getItemPrice(), item.getItemImageName(), lover);
	}
}
