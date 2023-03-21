package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Item;
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
}
