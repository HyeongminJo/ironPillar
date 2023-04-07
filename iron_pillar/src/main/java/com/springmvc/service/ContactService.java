package com.springmvc.service;

import java.util.List;
import java.util.Map;

import com.springmvc.domain.Contact;
import com.springmvc.domain.Criteria;

public interface ContactService 
{
	List<Contact> getAllContactList();
	public void setNewContact(Contact contact);
	Contact getContactBywNum(int wNum);
	public List<Map<String, Object>> contactList(Criteria cri) throws Exception;
	public int contactListCnt() throws Exception;
}
