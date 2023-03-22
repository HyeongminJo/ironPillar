package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Place;

public interface PlaceRepository 
{
	List<Place> getAllPlaceList();
	public void setNewPlace(Place place);
}
