package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Item;
import com.springmvc.domain.Review;

@Repository
public class ItemRepositoryImpl implements ItemRepository 
{
	private JdbcTemplate template;
	
	public List<Item> itemList = new ArrayList<Item>();
	
	@Autowired
	public void setJdbctemplate(DataSource dataSource)
	{
		this.template = new JdbcTemplate(dataSource);
	}
	
	public List<Item> getAllItemList()
	{
		String sql = "select * from item";
		List<Item> listOfItems = template.query(sql, new ItemRowMapper());
		this.itemList = listOfItems;
		return listOfItems;
	}
	
	public void setNewItem(Item item)
	{
		String sql = "insert into item (itemTitle, itemPrice, itemImage, itemText, itemCategory) values(?, ?, ?, ?, ?)";
		template.update(sql, item.getItemTitle(), item.getItemPrice(), item.getItemImageName(), item.getItemText(), item.getItemCategory());
	}
	
	public Item getItemByTitle(String itemTitle)
	{
		String sql = "select * from item where itemTitle=?";
		Item item = template.queryForObject(sql, new ItemRowMapper(), itemTitle);
		return item;
	}
	
	public void itemLove(String itemTitle, String lover)
	{
		String selectSql = "select * from item where itemTitle=?";
		Item item = template.queryForObject(selectSql, new ItemRowMapper(), itemTitle);
		int loves = item.getItemLove();
		loves = loves + 1;
		String updateSql = "update item set itemLove=? where itemTitle=?";
		template.update(updateSql, loves, itemTitle);
		String insertSql = "insert into wish (itemTitle, itemPrice, itemImage, itemLover) values(?, ?, ?, ?)";
		template.update(insertSql, item.getItemTitle(), item.getItemPrice(), item.getItemImageName(), lover);
	}
	
	public List<Item> getWishList(String memberId)
	{
		String sql = "select distinct * from wish where itemLover=?";
		List<Item> wishList = template.query(sql, new ItemWishRowMapper(), memberId);
		return wishList;
	}
	
	public void toCart(String itemTitle, int quantity, String member)
	{
		String selectSql = "select * from item where itemTitle=?";
		Item item = template.queryForObject(selectSql, new ItemRowMapper(), itemTitle);
		String insertSql = "insert into cart (itemTitle, itemPrice, itemImage, memberId, itemQuantity) values(?, ?, ?, ?, ?) on duplicate key update itemTitle=?, itemPrice=?, itemImage=?, memberId=?, itemQuantity=itemQuantity+?";
		template.update(insertSql, item.getItemTitle(), item.getItemPrice(), item.getItemImageName(), member, quantity, item.getItemTitle(), item.getItemPrice(), item.getItemImageName(), member, quantity);
	}
	
	public List<Item> getCart(String memberId)
	{
		String sql = "select distinct * from cart where memberId=?";
		List<Item> cart = template.query(sql, new ItemCartRowMapper(), memberId);
		return cart;
	}
	
	public void orderItem(String itemTitle, int quantity, String orderer, String date)
	{
		String selectSql = "select * from item where itemTitle=?";
		Item item = template.queryForObject(selectSql, new ItemRowMapper(), itemTitle);
		String sql = "insert into orderList (itemTitle, itemPrice, itemImage, itemQuantity, orderer, orderDate) values(?, ?, ?, ?, ?, ?)";
		template.update(sql, itemTitle, item.getItemPrice(), item.getItemImageName(), quantity, orderer, date);
		String deleteSql = "delete from cart where itemTitle=? and memberId=?";
		template.update(deleteSql, itemTitle, orderer);
	}
	
	public List<Item> getOrderList(String memberId)
	{
		String sql = "select * from orderList where orderer=?";
		List<Item> orderList = template.query(sql, new ItemOrderRowMapper(), memberId);
		return orderList;
	}
	
	public void addReview(Review review)
	{
		String insertSql = "insert into review (reviewItemTitle, reviewStar, reviewText, reviewImage, reviewWriter, reviewWriterLevel, reviewDate) value(?, ?, ?, ?, ?, ?, ?)";
		template.update(insertSql, review.getReviewItemTitle(), review.getReviewStar(), review.getReviewText(), review.getReviewImageName(), review.getReviewWriter(), review.getReviewWriterLevel(), review.getReviewDate());
		String selectSql = "select reviewItemTitle, round(avg(reviewStar),1) from review where reviewItemTitle=? group by reviewItemTitle";
		Review reviewForUpdate = template.queryForObject(selectSql, new ReviewStarRowMapper(), review.getReviewItemTitle());
		String updateSql = "update item set itemStar=? where itemTitle=?";
		template.update(updateSql, reviewForUpdate.getReviewStarAvg(), reviewForUpdate.getReviewItemTitle());
		String deleteSql = "delete from orderList where itemTitle=? and orderer=? and orderDate=?";
		template.update(deleteSql, review.getReviewItemTitle(), review.getReviewWriter(), review.getOrderDate());
	}
	
	public List<Review> getReviewList(String memberId)
	{
		String sql = "select * from review where reviewWriter=?";
		List<Review> reviewList = template.query(sql, new ReviewRowMapper(), memberId);
		return reviewList;
	}
	
	public void deleteReview(int reviewNum)
	{
		String sql = "delete from review where reviewNum=?";
		template.update(sql, reviewNum);
	}
	
	public void deleteWish(int wishNum)
	{
		String sql = "delete from wish where wishNum=?";
		template.update(sql, wishNum);
	}
	
	public void deleteCart(int cartNum)
	{
		String sql = "delete from cart where cartNum=?";
		template.update(sql, cartNum);
	}
}
