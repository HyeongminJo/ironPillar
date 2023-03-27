package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.Community;
import com.springmvc.domain.Item;
import com.springmvc.domain.Place;

public interface HomeService 
{
	List<Item> getRankItemList();
	List<Place> getRankPlaceList();
	List<Community> getNewCommunityList();
}
