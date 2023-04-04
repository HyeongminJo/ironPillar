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
	public List<Notice> getAllWriteList() 
	{
		return noticeRepository.getAllWriteList();
	}

	@Override
	public void setNewWrite(Notice write) 
	{
		noticeRepository.setNewWrite(write);
	}

	@Override
	public Notice getWriteBywNum(int wNum) 
	{
		return noticeRepository.getWriteBywNum(wNum);
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
