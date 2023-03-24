package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Item;
import com.springmvc.repository.HomeRepository;

@Service
public class HomeServiceImpl implements HomeService 
{
	@Autowired
	private HomeRepository homeRepository;
	
	@Override
	public List<Item> getRankItemList() 
	{
		homeRepository.getRankItemList();
		return null;
	}

}
