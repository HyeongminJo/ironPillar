package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.Item;

public interface ItemService 
{
	List<Item> getAllItemList();
	void setNewItem(Item item);
	Item getItemByTitle(String itemTitle);
	void itemLove(String itemTitle, String lover);
}
