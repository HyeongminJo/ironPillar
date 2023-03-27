package com.springmvc.domain;

import org.springframework.web.multipart.MultipartFile;

public class Item 
{
	private String itemTitle;
	private int itemPrice;
	private MultipartFile itemImage;
	private String itemText;
	private String itemCategory;
	private String itemImageName;
	private int itemLove;
	
	public Item()
	{
		super();
	}

	public String getItemTitle() {
		return itemTitle;
	}

	public void setItemTitle(String itemTitle) {
		this.itemTitle = itemTitle;
	}

	public int getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}

	public MultipartFile getItemImage() {
		return itemImage;
	}

	public void setItemImage(MultipartFile itemImage) {
		this.itemImage = itemImage;
	}

	public String getItemText() {
		return itemText;
	}

	public void setItemText(String itemText) {
		this.itemText = itemText;
	}

	public String getItemCategory() {
		return itemCategory;
	}

	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}

	public String getItemImageName() {
		return itemImageName;
	}

	public void setItemImageName(String itemImageName) {
		this.itemImageName = itemImageName;
	}

	public int getItemLove() {
		return itemLove;
	}

	public void setItemLove(int itemLove) {
		this.itemLove = itemLove;
	}
	
}
