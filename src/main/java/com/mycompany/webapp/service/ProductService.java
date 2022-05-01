package com.mycompany.webapp.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import com.mycompany.webapp.dao.mybatis.ProductDao;
import com.mycompany.webapp.dto.product.ProductDto;

import lombok.extern.log4j.Log4j2;


@Service
@Log4j2
public class ProductService {
	@Resource
	private ProductDao productDao;
	private ProductDto productDto;
	public void insertproduct(ProductDto product){
		productDao.insertproduct(product);
	}
	public void saveImage(Map<String, Object> hmap) {
		productDao.saveImage(hmap);
	}
	public List<ProductDto> selectchairlist() {
		
		return productDao.selectchairlist();
	}
	
	public List<ProductDto> selectbestlist(){
		return productDao.selectbestlist();
	}
	public List<ProductDto> sort(int sort){
		if(sort==1) {
			List<ProductDto> pList=productDao.soltsalesCount();
			return pList;
		}
		else if(sort==2) {
			List<ProductDto> pList=productDao.soltviewCount();
			return pList;
		}
		else if(sort==3) {
			List<ProductDto> pList=productDao.soltreviewCount();
			return pList;
		}
		else if(sort==4) {
			List<ProductDto> pList=productDao.solttime();
			return pList;
		}
		List<ProductDto> pList=productDao.solttime();
		return pList;
		
	}
	/*public Map<String, Object> getByteImage(){
		return productDao.getByteImage();
	}*/
	
	
}
