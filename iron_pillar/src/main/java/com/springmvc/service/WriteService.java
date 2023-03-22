package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.Write;

public interface WriteService 
{
	List<Write> getAllWriteList();
	void setNewWrite(Write write);
}
