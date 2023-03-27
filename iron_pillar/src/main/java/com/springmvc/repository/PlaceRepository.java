package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Place;

public interface PlaceRepository 
{
	List<Place> getAllPlaceList();
	void setNewPlace(Place place);
	Place getPlaceByTitle(String placeTitle);
}
