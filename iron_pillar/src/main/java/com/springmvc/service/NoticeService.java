package com.springmvc.service;

import java.util.List;
import java.util.Map;

import com.springmvc.domain.Criteria;
import com.springmvc.domain.Notice;

public interface NoticeService 
{
	List<Notice> getAllNoticeList();
	public void setNewNotice(Notice notice);
	Notice getNoticeBywNum(int wNum);
	public List<Map<String, Object>> noticeList(Criteria cri) throws Exception;
	public int noticeListCnt() throws Exception;
}
