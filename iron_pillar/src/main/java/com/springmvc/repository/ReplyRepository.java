package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Reply;

public interface ReplyRepository 
{
	//조회
	List<Reply> getAllReplyList();
	// 새로 입력
	public void setNewReply(Reply reply);
	// 매개변수가 주어진 값에 해당하는 글을 조회하기 위한 메소드
	Reply getReplyBywNum(int wNum);
	// 특정 게시글에 달린 댓글 목록을 조회하는 메소드
    List<Reply> getReplyListBywNum(int wNum);
}
