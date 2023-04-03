package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Item;
import com.springmvc.domain.Review;
import com.springmvc.repository.ItemRepository;

@Service
public class ItemServiceImpl implements ItemService 
{
	@Autowired
	private ItemRepository itemRepository;
	
	public List<Item> getAllItemList()
	{
		return itemRepository.getAllItemList();
	}
	
	public void setNewItem(Item item)
	{
		itemRepository.setNewItem(item);
	}
	
	public Item getItemByTitle(String itemTitle)
	{
		return itemRepository.getItemByTitle(itemTitle);
	}
	
	public void itemLove(String itemTitle, String lover)
	{
		itemRepository.itemLove(itemTitle, lover);
	}
	
	public List<Item> getWishList(String memberId)
	{
		return itemRepository.getWishList(memberId);
	}
	
	public void toCart(String itemTitle, int quantity, String member)
	{
		itemRepository.toCart(itemTitle, quantity, member);
	}
	
	public List<Item> getCart(String memberId)
	{
		return itemRepository.getCart(memberId);
	}
	
	public void orderItem(String itemTitle, int quantity, String orderer, String date)
	{
		itemRepository.orderItem(itemTitle, quantity, orderer, date);
	}
	
	public List<Item> getOrderList(String memberId)
	{
		return itemRepository.getOrderList(memberId);
	}
	
	public void addReview(Review review)
	{
		itemRepository.addReview(review);
	}
	
	public List<Review> getReviewList(String memberId)
	{
		return itemRepository.getReviewList(memberId);
	}
}
