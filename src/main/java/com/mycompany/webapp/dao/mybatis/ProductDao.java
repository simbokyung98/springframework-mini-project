package com.mycompany.webapp.dao.mybatis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.mypage.ReviewDto;
import com.mycompany.webapp.dto.product.ProductDetailDto;
import com.mycompany.webapp.dto.product.ProductDto;

@Mapper
public interface ProductDao {
	public int insertproduct(ProductDto product);
	public List<ProductDto> selectchairlist();
	public void saveImage(Map<String, Object> hmap);
	//public Map<String, Object> getByteImage(Map<String, Object> imap);
	//public Map<String, Object> getByteImage();
	
	//정렬 해 보려고 추가 했어용
	public List<ProductDto> soltsalesCount();
	public List<ProductDto> soltviewCount();
	public List<ProductDto> soltreviewCount();
	public List<ProductDto> solttime();
	public List<ProductDto> selectbestlist();
	public List<ProductDto> selectproductlist(String category);
	
	
	//상세보기
	public ProductDto selectDetailProduct(String modelNumber);
	
	//상세보기 이미지 가져옵니당
	public List<ProductDetailDto> detailProductPhoto(String stringmodelNumber);
	
	//상세 클릭할 때 마다 조회수 추가
	public int updatehits(String modelNumber);
	
	//카트에 담을 장비 선택
	public ProductDto selectProduct(String modelNumber);
	public List<ProductDto> selectreviewslist(String category);
	public List<ProductDto> selectviewslist(String category);
	public List<ProductDto> selectpopularlist(String category);
	public List<ProductDto> selectnewlist(String category);
	
	//상세 창에서 리뷰 보기
	public List<ReviewDto> selectReview(String modelNumber);

}