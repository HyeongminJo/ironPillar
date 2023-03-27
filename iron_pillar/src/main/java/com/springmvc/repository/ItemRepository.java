package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Item;

public interface ItemRepository 
{
	List<Item> getAllItemList();
	void setNewItem(Item item);
	Item getItemByTitle(String itemTitle);
	void itemLove(String itemTitle, String lover);
}
