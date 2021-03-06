package com.mycompany.webapp.dto.product;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.UsersDto;

import lombok.Data;
@Data
public class AfterServiceDto {
	private int receiptNumber;//접수 번호
	private String productName;//제품명
	private String basicSymptoms;//기본증상
	private String detailedSymptoms;//세부증상 CLOB
	//clob 추후 mybatis에서 resultMap 사용하기
	private String applicationDate;//제품 등록일
	private MultipartFile asAttachedFile;//첨부파일 BLBO
	private String scheduledServiceDate;//서비스 예정일
	private ProductDto modelNumber;//모델명 (외래키)
	private String email;//이메일 (외래키)
	private String stringModelNumber;
	private UsersDto user;
	private String timeorder;
}
