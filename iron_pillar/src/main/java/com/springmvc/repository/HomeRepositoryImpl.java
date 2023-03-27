package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Community;
import com.springmvc.domain.Item;
import com.springmvc.domain.Place;

@Repository
public class HomeRepositoryImpl implements HomeRepository 
{
	private JdbcTemplate template;
	
	public List<Item> rankItemList = new ArrayList<Item>();
	public List<Place> rankPlaceList = new ArrayList<Place>();
	public List<Community> newCommunityList = new ArrayList<Community>();
	
	@Autowired
	public void setJdbctemplate(DataSource dataSource)
	{
		this.template = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Item> getRankItemList() 
	{
		String sql = "select * from item order by itemLove desc limit 3";
		List<Item> listOfRankItems = template.query(sql, new ItemRowMapper());
		this.rankItemList = listOfRankItems;
		return listOfRankItems;
	}
	
	@Override
	public List<Place> getRankPlaceList() 
	{
		String sql = "select * from place order by placeLove desc limit 3";
		List<Place> listOfRankPlaces = template.query(sql, new PlaceRowMapper());
		this.rankPlaceList = listOfRankPlaces;
		return listOfRankPlaces;
	}
	
	@Override
	public List<Community> getNewCommunityList()
	{
		String sql = "select * from community order by communityNum desc limit 3";
		List<Community> listOfNewCommunities = template.query(sql, new CommunityRowMapper());
		this.newCommunityList = listOfNewCommunities;
		return listOfNewCommunities;
	}
}
