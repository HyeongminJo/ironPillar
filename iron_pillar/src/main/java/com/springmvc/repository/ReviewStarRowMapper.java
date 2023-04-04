package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springmvc.domain.Review;

public class ReviewStarRowMapper implements RowMapper<Review>
{
	public Review mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		Review review = new Review();
		review.setReviewItemTitle(rs.getString(1));
		review.setReviewStarAvg(rs.getString(2));
		return review;
	}
}
