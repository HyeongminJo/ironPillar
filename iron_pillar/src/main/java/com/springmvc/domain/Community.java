package com.springmvc.domain;

import org.springframework.web.multipart.MultipartFile;

public class Community 
{
	private int communityNum;
	private String communityTitle;
	private MultipartFile communityImage;
	private String communityText;
	private String communityImageName;
	private String communityWriter;
	private int communityWriterLevel;
	private String communityDate;
	
	public Community()
	{
		super();
	}

	public int getCommunityNum() {
		return communityNum;
	}

	public void setCommunityNum(int communityNum) {
		this.communityNum = communityNum;
	}

	public String getCommunityTitle() {
		return communityTitle;
	}

	public void setCommunityTitle(String communityTitle) {
		this.communityTitle = communityTitle;
	}

	public MultipartFile getCommunityImage() {
		return communityImage;
	}

	public void setCommunityImage(MultipartFile communityImage) {
		this.communityImage = communityImage;
	}

	public String getCommunityText() {
		return communityText;
	}

	public void setCommunityText(String communityText) {
		this.communityText = communityText;
	}

	public String getCommunityImageName() {
		return communityImageName;
	}

	public void setCommunityImageName(String communityImageName) {
		this.communityImageName = communityImageName;
	}

	public String getCommunityWriter() {
		return communityWriter;
	}

	public void setCommunityWriter(String communityWriter) {
		this.communityWriter = communityWriter;
	}

	public int getCommunityWriterLevel() {
		return communityWriterLevel;
	}

	public void setCommunityWriterLevel(int communityWriterLevel) {
		this.communityWriterLevel = communityWriterLevel;
	}

	public String getCommunityDate() {
		return communityDate;
	}

	public void setCommunityDate(String communityDate) {
		this.communityDate = communityDate;
	}
	
}
