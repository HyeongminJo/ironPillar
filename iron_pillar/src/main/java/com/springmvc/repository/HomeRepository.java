package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Item;

public interface HomeRepository 
{
	List<Item> getRankItemList();
}
