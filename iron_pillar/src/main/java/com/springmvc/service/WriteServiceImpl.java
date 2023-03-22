package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Write;
import com.springmvc.repository.WriteRepository;

@Service
public class WriteServiceImpl implements WriteService 
{
	@Autowired
	private WriteRepository writeRepository;
	
	@Override
	public List<Write> getAllWriteList() 
	{
		return writeRepository.getAllWriteList();
	}

	@Override
	public void setNewWrite(Write write) 
	{
		writeRepository.setNewWrite(write);
	}

}
