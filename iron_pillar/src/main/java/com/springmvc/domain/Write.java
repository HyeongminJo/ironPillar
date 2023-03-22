package com.springmvc.domain;

import org.springframework.web.multipart.MultipartFile;

public class Write 
{
	private String writeTitle;
	private MultipartFile writeImage;
	private String writeText;
	private String writeImageName;
	
	public Write()
	{
		super();
	}

	public String getWriteTitle() {
		return writeTitle;
	}

	public void setWriteTitle(String writeTitle) {
		this.writeTitle = writeTitle;
	}

	public MultipartFile getWriteImage() {
		return writeImage;
	}

	public void setWriteImage(MultipartFile writeImage) {
		this.writeImage = writeImage;
	}

	public String getWriteText() {
		return writeText;
	}

	public void setWriteText(String writeText) {
		this.writeText = writeText;
	}

	public String getWriteImageName() {
		return writeImageName;
	}

	public void setWriteImageName(String writeImageName) {
		this.writeImageName = writeImageName;
	}
	
}
