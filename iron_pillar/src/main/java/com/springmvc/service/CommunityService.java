package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.Community;


public interface CommunityService 
{
	List<Community> getAllCommunityList();
	void setNewCommunity(Community community);
}
