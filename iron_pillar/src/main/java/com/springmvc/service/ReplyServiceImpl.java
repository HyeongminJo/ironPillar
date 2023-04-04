package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Reply;
import com.springmvc.repository.ReplyRepository;

@Service
public class ReplyServiceImpl implements ReplyService 
{
	@Autowired
	ReplyRepository replyRepository;
	
	@Override
	public List<Reply> getAllReplyList() 
	{
		return replyRepository.getAllReplyList();
	}

	@Override
	public void setNewReply(Reply reply) 
	{
		replyRepository.setNewReply(reply);
	}

	@Override
	public Reply getReplyBywNum(int wNum) {
		return replyRepository.getReplyBywNum(wNum);
	}

	@Override
	public List<Reply> getReplyListBywNum(int wNum) {
		return replyRepository.getReplyListBywNum(wNum);
	}

}
