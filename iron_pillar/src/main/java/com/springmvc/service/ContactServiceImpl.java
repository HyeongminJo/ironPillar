package com.springmvc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Contact;
import com.springmvc.domain.Criteria;
import com.springmvc.repository.ContactRepository;

@Service
public class ContactServiceImpl implements ContactService 
{
	@Autowired
	private ContactRepository contactRepository;
	
	@Override
	public List<Contact> getAllContactList() 
	{
		return contactRepository.getAllContactList();
	}

	@Override
	public void setNewContact(Contact contact) 
	{
		contactRepository.setNewContact(contact);
	}

	@Override
    public Contact getContactBywNum(int wNum) {
        return contactRepository.getContactBywNum(wNum);
    }
	@Override
	public List<Map<String, Object>> contactList(Criteria cri) throws Exception {
		return contactRepository.contactList(cri);
	}

	@Override
	public int contactListCnt() throws Exception {
		return contactRepository.contactListCnt();
	}

}
