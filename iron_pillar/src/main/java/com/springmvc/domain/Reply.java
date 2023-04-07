package com.springmvc.domain;

import java.util.Date;

public class Reply 
{
	private int rno;
	private int wNum;
	private String memberNick;
	private int memberLevel;
	private String content;
	private String rDate;
	
	public Reply() {
		super();
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getwNum() {
		return wNum;
	}

	public void setwNum(int wNum) {
		this.wNum = wNum;
	}

	public String getMemberNick() {
		return memberNick;
	}

	public void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}

	public int getMemberLevel() {
		return memberLevel;
	}

	public void setMemberLevel(int memberLevel) {
		this.memberLevel = memberLevel;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public String getrDate() {
		return rDate;
	}

	public void setrDate(String rDate) {
		this.rDate = rDate;
	}

	@Override
	public String toString() {
	    return "Reply [rno=" + rno + ", wNum=" + wNum + ", memberNick="
	            + memberNick + ", content=" + content + ", rDate=" + rDate + "]";
	}
}
