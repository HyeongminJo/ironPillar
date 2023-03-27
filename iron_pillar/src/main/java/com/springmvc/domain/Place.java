package com.springmvc.domain;

import org.springframework.web.multipart.MultipartFile;

public class Place 
{
	private String placeTitle;
	private MultipartFile placeImage;
	private String placeText;
	private String placeCategory;
	private String placeImageName;
	private String placeAddress;
	private int placePrice;
	private int placeLove;
	
	public Place()
	{
		super();
	}

	public String getPlaceTitle() {
		return placeTitle;
	}

	public void setPlaceTitle(String placeTitle) {
		this.placeTitle = placeTitle;
	}

	public MultipartFile getPlaceImage() {
		return placeImage;
	}

	public void setPlaceImage(MultipartFile placeImage) {
		this.placeImage = placeImage;
	}

	public String getPlaceText() {
		return placeText;
	}

	public void setPlaceText(String placeText) {
		this.placeText = placeText;
	}

	public String getPlaceCategory() {
		return placeCategory;
	}

	public void setPlaceCategory(String placeCategory) {
		this.placeCategory = placeCategory;
	}

	public String getPlaceImageName() {
		return placeImageName;
	}

	public void setPlaceImageName(String placeImageName) {
		this.placeImageName = placeImageName;
	}

	public int getPlaceLove() {
		return placeLove;
	}

	public void setPlaceLove(int placeLove) {
		this.placeLove = placeLove;
	}

	public String getPlaceAddress() {
		return placeAddress;
	}

	public void setPlaceAddress(String placeAddress) {
		this.placeAddress = placeAddress;
	}

	public int getPlacePrice() {
		return placePrice;
	}

	public void setPlacePrice(int placePrice) {
		this.placePrice = placePrice;
	}
	
}
