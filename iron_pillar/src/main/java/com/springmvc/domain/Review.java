package com.springmvc.domain;

public class Review 
{
	private String reviewItemTitle;
	private String reviewTitle;
	private int reviewStar;
	private String reviewText;
	private String reviewImage;
	private String reviewWriter;
	private int reviewWriterLevel;
	private String reviewDate;
	
	public Review()
	{
		super();
	}

	public String getReviewItemTitle() {
		return reviewItemTitle;
	}

	public void setReviewItemTitle(String reviewItemTitle) {
		this.reviewItemTitle = reviewItemTitle;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public int getReviewStar() {
		return reviewStar;
	}

	public void setReviewStar(int reviewStar) {
		this.reviewStar = reviewStar;
	}

	public String getReviewText() {
		return reviewText;
	}

	public void setReviewText(String reviewText) {
		this.reviewText = reviewText;
	}

	public String getReviewImage() {
		return reviewImage;
	}

	public void setReviewImage(String reviewImage) {
		this.reviewImage = reviewImage;
	}

	public String getReviewWriter() {
		return reviewWriter;
	}

	public void setReviewWriter(String reviewWriter) {
		this.reviewWriter = reviewWriter;
	}

	public int getReviewWriterLevel() {
		return reviewWriterLevel;
	}

	public void setReviewWriterLevel(int reviewWriterLevel) {
		this.reviewWriterLevel = reviewWriterLevel;
	}

	public String getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}
}
