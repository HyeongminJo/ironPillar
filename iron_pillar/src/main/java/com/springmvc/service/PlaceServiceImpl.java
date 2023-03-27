package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Item;
import com.springmvc.domain.Place;
import com.springmvc.repository.PlaceRepository;

@Service
public class PlaceServiceImpl implements PlaceService 
{
	@Autowired
	private PlaceRepository placeRepository;
	
	@Override
	public List<Place> getAllPlaceList() 
	{
		return placeRepository.getAllPlaceList();
	}

	@Override
	public void setNewPlace(Place place) 
	{
		placeRepository.setNewPlace(place);
	}
	
	@Override
	public Place getPlaceByTitle(String placeTitle)
	{
		return placeRepository.getPlaceByTitle(placeTitle);
	}
}
