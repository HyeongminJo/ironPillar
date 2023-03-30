package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Community;
import com.springmvc.domain.Member;

@Repository
public class CommunityRepositoryImpl implements CommunityRepository 
{
	private JdbcTemplate template;
	
	public List<Community> communityList = new ArrayList<Community>();
	
	@Autowired
	public void setJdbctemplate(DataSource dataSource)
	{
		this.template = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Community> getAllCommunityList() 
	{
		String SQL = "select * from community order by communityNum desc";
		List<Community> listOfCommunitys = template.query(SQL, new CommunityRowMapper());
		this.communityList = listOfCommunitys;
		return listOfCommunitys;
	}

	@Override
	public void setNewCommunity(Community community) 
	{
		String memberSql = "update member set memberLevel=? where memberNick=?";
		template.update(memberSql, community.getCommunityWriterLevel(), community.getCommunityWriter());
		String communitySql = "insert into community (communityTitle, communityImage, communityText, communityWriter, communityWriterLevel, communityDate) values(?, ?, ?, ?, ?, ?)";
		template.update(communitySql, community.getCommunityTitle(), community.getCommunityImageName(), community.getCommunityText(), community.getCommunityWriter(), community.getCommunityWriterLevel(), community.getCommunityDate());
		String communityLevelSql = "update community set communityWriterLevel=? where communityWriter=?";
		template.update(communityLevelSql, community.getCommunityWriterLevel(), community.getCommunityWriter());
	}
	
	public Community getCommunityByNum(int communityNum)
	{
		String sql = "select * from community where communityNum=?";
		Community community = template.queryForObject(sql, new CommunityRowMapper(), communityNum);
		return community;
	}
}
