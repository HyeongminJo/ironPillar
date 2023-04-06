package com.springmvc.domain;

import java.util.Date;

public class Notice 
{
	private String writer;
	private int wNum;
	private String wTitle;
	private String wDescription;
	private String wDate;
	
	public Notice() 
	{
		super();
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getwNum()
	{
		return wNum;
	}
	public void setwNum(int wNum)
	{
		this.wNum = wNum;
	}
	public String getwTitle()
	{
		return wTitle;
	}
	public void setwTitle(String wTitle)
	{
		this.wTitle = wTitle;
	}

	public String getwDescription() {
		return wDescription;
	}

	public void setwDescription(String wDescription) {
		this.wDescription = wDescription;
	}

	public String getwDate() {
		return wDate;
	}

	public void setwDate(String wDate) {
		this.wDate = wDate;
	}
}
