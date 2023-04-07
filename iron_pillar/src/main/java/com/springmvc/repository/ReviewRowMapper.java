package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Review;

public class ReviewRowMapper implements RowMapper<Review>
{
	public Review mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		Review review = new Review();
		review.setReviewNum(rs.getInt(1));
		review.setReviewItemTitle(rs.getString(2));
		review.setReviewStar(rs.getInt(3));
		review.setReviewText(rs.getString(4));
		review.setReviewImageName(rs.getString(5));
		review.setReviewWriter(rs.getString(6));
		review.setReviewWriterLevel(rs.getInt(7));
		review.setReviewDate(rs.getString(8));
		return review;
	}
}
