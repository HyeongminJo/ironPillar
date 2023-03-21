package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Item;

public interface ItemRepository 
{
	List<Item> getAllItemList();
	public void setNewItem(Item item);
}
