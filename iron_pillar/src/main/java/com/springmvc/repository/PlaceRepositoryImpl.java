package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Item;
import com.springmvc.domain.Place;

@Repository
public class PlaceRepositoryImpl implements PlaceRepository 
{
	private JdbcTemplate template;
	
	public List<Place> placeList = new ArrayList<Place>();
	
	@Autowired
	public void setJdbctemplate(DataSource dataSource)
	{
		this.template = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Place> getAllPlaceList() 
	{
		String SQL = "SELECT * FROM place";
		List<Place> listOfPlaces = template.query(SQL, new PlaceRowMapper());
		this.placeList = listOfPlaces;
		return listOfPlaces;
	}

	@Override
	public void setNewPlace(Place place) 
	{
		String sql = "insert into place (placetitle, placeImageName, placeText, placeCategory) values(?, ?, ?, ?)";
		template.update(sql, place.getPlaceTitle(), place.getPlaceImageName(), place.getPlaceText(), place.getPlaceCategory());
	}
	
	@Override
	public Place getPlaceByTitle(String placeTitle)
	{
		String sql = "select * from place where placeTitle=?";
		Place place = template.queryForObject(sql, new PlaceRowMapper(), placeTitle);
		return place;
	}
}
