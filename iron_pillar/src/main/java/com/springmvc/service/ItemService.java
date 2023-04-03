package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.Item;
import com.springmvc.domain.Review;

public interface ItemService 
{
	List<Item> getAllItemList();
	void setNewItem(Item item);
	Item getItemByTitle(String itemTitle);
	void itemLove(String itemTitle, String lover);
	List<Item> getWishList(String memberId);
	void toCart(String itemTitle, int quantity, String member);
	List<Item> getCart(String memberId);
	void orderItem(String itemTitle, int quantity, String orderer, String date);
	List<Item> getOrderList(String memberId);
	void addReview(Review review);
	List<Review> getReviewList(String memberId);
}
