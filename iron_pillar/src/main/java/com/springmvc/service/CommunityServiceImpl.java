package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Community;
import com.springmvc.repository.CommunityRepository;

@Service
public class CommunityServiceImpl implements CommunityService 
{
	@Autowired
	private CommunityRepository communityRepository;
	
	@Override
	public List<Community> getAllCommunityList() 
	{
		return communityRepository.getAllCommunityList();
	}

	@Override
	public void setNewCommunity(Community community) 
	{
		communityRepository.setNewCommunity(community);
	}
	
	public Community getCommunityByNum(int communityNum)
	{
		return communityRepository.getCommunityByNum(communityNum);
	}
}
