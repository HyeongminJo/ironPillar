package com.springmvc.service;

import java.util.List;
import java.util.Map;

import com.springmvc.domain.Contact;
import com.springmvc.domain.Criteria;

public interface ContactService 
{
	List<Contact> getAllWriteList();
	public void setNewWrite(Contact write);
	Contact getWriteBywNum(int wNum);
	public List<Map<String, Object>> contactList(Criteria cri) throws Exception;
	public int contactListCnt() throws Exception;
}
