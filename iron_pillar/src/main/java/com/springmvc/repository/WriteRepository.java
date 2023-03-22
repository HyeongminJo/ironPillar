package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Write;

public interface WriteRepository 
{
	List<Write> getAllWriteList();
	public void setNewWrite(Write write);
}
