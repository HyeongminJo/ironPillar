package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Community;
import com.springmvc.domain.Item;
import com.springmvc.domain.Place;

public interface HomeRepository 
{
	List<Item> getRankItemList();
	List<Place> getRankPlaceList();
	List<Community> getNewCommunityList();
}
