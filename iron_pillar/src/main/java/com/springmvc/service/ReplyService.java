package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.Reply;

public interface ReplyService 
{
	List<Reply> getAllReplyList();
	public void setNewReply(Reply reply);
	Reply getReplyBywNum(int wNum);
	List<Reply> getReplyListBywNum(int wNum);
}
