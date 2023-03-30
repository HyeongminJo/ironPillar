package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Community;

public interface CommunityRepository 
{
	List<Community> getAllCommunityList();
	public void setNewCommunity(Community community);
	Community getCommunityByNum(int communityNum);
}
