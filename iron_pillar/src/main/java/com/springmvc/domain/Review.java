package com.springmvc.domain;

import org.springframework.web.multipart.MultipartFile;

public class Review 
{
	private String reviewItemTitle;
	private int reviewStar;
	private String reviewText;
	private MultipartFile reviewImage;
	private String reviewImageName;
	private String reviewWriter;
	private int reviewWriterLevel;
	private String reviewDate;
	private String reviewStarAvg;
	
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

	public MultipartFile getReviewImage() {
		return reviewImage;
	}

	public void setReviewImage(MultipartFile reviewImage) {
		this.reviewImage = reviewImage;
	}

	public String getReviewImageName() {
		return reviewImageName;
	}

	public void setReviewImageName(String reviewImageName) {
		this.reviewImageName = reviewImageName;
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

	public String getReviewStarAvg() {
		return reviewStarAvg;
	}

	public void setReviewStarAvg(String reviewStarAvg) {
		this.reviewStarAvg = reviewStarAvg;
	}
}
