package com.mycompany.webapp.dto.mypage;

import org.apache.logging.log4j.message.Message;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ReviewDto {
	private String email;
	private int purchaseNumber;
	private String modelNumber;
	private String reviewTitle;
	private String reviewContent;
	private String reviewWriteDate;
	private String write_date;
	private MultipartFile reviewFile;
	

}