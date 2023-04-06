package com.springmvc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Criteria;
import com.springmvc.domain.Notice;
import com.springmvc.repository.NoticeRepository;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeRepository noticeRepository;
	
	@Override
	public List<Notice> getAllNoticeList() 
	{
		return noticeRepository.getAllNoticeList();
	}

	@Override
	public void setNewNotice(Notice notice) 
	{
		noticeRepository.setNewNotice(notice);
	}

	@Override
	public Notice getNoticeBywNum(int wNum) 
	{
		return noticeRepository.getNoticeBywNum(wNum);
	}

	@Override
	public List<Map<String, Object>> noticeList(Criteria cri) throws Exception 
	{
		return noticeRepository.noticeList(cri);
	}

	@Override
	public int noticeListCnt() throws Exception 
	{
		return noticeRepository.noticeListCnt();
	}

}
