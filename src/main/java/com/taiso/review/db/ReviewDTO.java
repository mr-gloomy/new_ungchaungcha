package com.taiso.review.db;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ReviewDTO {
	
	
	private int rev_num;
	private String rev_subject;
	private String rev_content;
	private String rev_image;
	private int rev_star;
	private Timestamp rev_date;
	private int car_code;
	private int rez_uqNum;
	private String mem_id;
	
	

}
