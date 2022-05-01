package com.mycompany.webapp.dao.mybatis;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mycompany.webapp.dto.product.ProductDto;

@Mapper
public class ProductDaoImpl implements ProductDao{
	/*@Autowired
	private SqlSessionTemplate sqlSessionTemplate;*/
	
	@Resource
	private SqlSession sqlSession;
	
	@Override
	public List<ProductDto> selectchairlist() {
		
		return sqlSession.selectList("product.selectchairlist");
	}

	@Override
	public int insertproduct(ProductDto product) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public void saveImage(Map<String, Object> hmap) {
		sqlSession.update("sqlSession", hmap);
	}
	@Override
	public List<ProductDto> soltsalesCount(){
		return sqlSession.selectList("product.soltsalesCount");
	}
	@Override
	public List<ProductDto> soltviewCount(){
		return sqlSession.selectList("product.soltviewCount");
	}
	@Override
	public List<ProductDto> soltreviewCount(){
		return sqlSession.selectList("product.soltreviewCount");
	}
	@Override
	public List<ProductDto> solttime(){
		return sqlSession.selectList("product.solttime");
	}
	@Override
	public List<ProductDto> selectbestlist(){
		return sqlSession.selectList("product.selectbestlist");
	}
	/*@Override
	public Map<String, Object> getByteImage(){
		return sqlSession.selectOne("sqlSession.getByteImage");
	}*/

	
	
}