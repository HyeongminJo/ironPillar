package com.springmvc.repository;

import java.util.List;
import java.util.Map;

import com.springmvc.domain.Criteria;
import com.springmvc.domain.Notice;

public interface NoticeRepository 
{
	List<Notice> getAllWriteList();
	public void setNewWrite(Notice write);
	Notice getWriteBywNum(int wNum);
	public List<Map<String, Object>> noticeList(Criteria cri) throws Exception;
	public int noticeListCnt() throws Exception;
}
