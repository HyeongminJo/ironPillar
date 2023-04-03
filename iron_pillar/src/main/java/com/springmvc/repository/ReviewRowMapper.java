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
		review.setReviewItemTitle(rs.getString(1));
		review.setReviewStar(rs.getInt(2));
		review.setReviewText(rs.getString(3));
		review.setReviewImageName(rs.getString(4));
		review.setReviewWriter(rs.getString(5));
		review.setReviewWriterLevel(rs.getInt(6));
		review.setReviewDate(rs.getString(7));
		return review;
	}
}
