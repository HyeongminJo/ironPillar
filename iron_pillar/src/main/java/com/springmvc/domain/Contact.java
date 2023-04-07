package com.springmvc.domain;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Contact 
{
	private int wNum;
	private String memberId;
	private int memberLevel;
	private String wTitle;
	private MultipartFile wImage;
	private String wDescription;
	private String wImageName;
	private String wDate;
	
	public Contact()
	{
		super();
	}
	
	public int getwNum() {
		return wNum;
	}
	public void setwNum(int wNum) {
		this.wNum = wNum;
	}
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getMemberLevel() {
		return memberLevel;
	}

	public void setMemberLevel(int memberLevel) {
		this.memberLevel = memberLevel;
	}

	public String getwTitle() {
		return wTitle;
	}
	public void setwTitle(String wTitle) {
		this.wTitle = wTitle;
	}
	
	public MultipartFile getwImage() {
		return wImage;
	}

	public void setwImage(MultipartFile wImage) {
		this.wImage = wImage;
	}

	public String getwDescription() {
		return wDescription;
	}
	public void setwDescription(String wDescription) {
		this.wDescription = wDescription;
	}

	public String getwImageName() {
		return wImageName;
	}

	public void setwImageName(String wImageName) {
		this.wImageName = wImageName;
	}

	public String getwDate() {
		return wDate;
	}

	public void setwDate(String wDate) {
		this.wDate = wDate;
	}
}
