package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Item;

@Repository
public class HomeRepositoryImpl implements HomeRepository 
{
	private JdbcTemplate template;
	
	public List<Item> rankItemList = new ArrayList<Item>();
	
	@Override
	public List<Item> getRankItemList() 
	{
		String sql = "select * from item ";
		return null;
	}

}
