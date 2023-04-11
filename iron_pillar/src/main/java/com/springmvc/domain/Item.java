package com.springmvc.domain;

import org.springframework.web.multipart.MultipartFile;

public class Item 
{
	private int cartNum;
	private int wishNum;
	private String itemTitle;
	private int itemPrice;
	private MultipartFile itemImage;
	private String itemText;
	private String itemCategory;
	private String itemImageName;
	private int itemLove;
	private String itemLover;
	private String cartId;
	private int cartQuantity;
	private String orderDate;
	private int orderQuantity;
	private String orderer;
	private String itemStar;
	
	public Item()
	{
		super();
	}

	public int getCartNum() {
		return cartNum;
	}

	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}

	public int getWishNum() {
		return wishNum;
	}

	public void setWishNum(int wishNum) {
		this.wishNum = wishNum;
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

	public String getItemLover() {
		return itemLover;
	}

	public void setItemLover(String itemLover) {
		this.itemLover = itemLover;
	}

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}

	public int getCartQuantity() {
		return cartQuantity;
	}

	public void setCartQuantity(int cartQuantity) {
		this.cartQuantity = cartQuantity;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public int getOrderQuantity() {
		return orderQuantity;
	}

	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}

	public String getOrderer() {
		return orderer;
	}

	public void setOrderer(String orderer) {
		this.orderer = orderer;
	}

	public String getItemStar() {
		return itemStar;
	}

	public void setItemStar(String itemStar) {
		this.itemStar = itemStar;
	}
	
}
