package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Place;

public class PlaceRowMapper implements RowMapper<Place> 
{
	public Place mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		Place place = new Place();
		place.setPlaceTitle(rs.getString(1));
		place.setPlaceImageName(rs.getString(2));
		place.setPlaceText(rs.getString(3));
		place.setPlaceCategory(rs.getString(4));
		return place;
	}
}
