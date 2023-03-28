package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Item;

public interface ItemRepository 
{
	List<Item> getAllItemList();
	void setNewItem(Item item);
	Item getItemByTitle(String itemTitle);
	void itemLove(String itemTitle, String lover);
	List<Item> getWishList(String memberId);
	void toCart(String itemTitle, String member);
	List<Item> getCart(String memberId);
	void orderItem(Item item, String orderer, String date);
	List<Item> getOrderList(String memberId);
}
