package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.Place;

public interface PlaceService 
{
	List<Place> getAllPlaceList();
	void setNewPlace(Place place);
}
