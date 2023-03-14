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
		String SQL = "SELECT * FROM item";
		List<Item> listOfItems = template.query(SQL, new ItemRowMapper());
		this.itemList = listOfItems;
		return listOfItems;
	}
}
