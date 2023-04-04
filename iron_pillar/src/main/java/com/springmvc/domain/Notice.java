package com.springmvc.domain;

import java.util.Date;

public class Notice 
{
	private int wNum;
	private String wTitle;
	private String wDescription;
	private Date wDate;
	
	public Notice() 
	{
		super();
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

	public Date getwDate() {
		return wDate;
	}

	public void setwDate(Date wDate) {
		this.wDate = wDate;
	}
}
