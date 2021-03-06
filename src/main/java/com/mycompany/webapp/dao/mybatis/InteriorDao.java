package com.mycompany.webapp.dao.mybatis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.interior.InteriorDto;

@Mapper
public interface InteriorDao {
	//인테리어 insert
	public int insertInterior(InteriorDto interior);
	//포폴 최신순
	public List<InteriorDto> interiorList();
	
	//포폴 과거순
	public List<InteriorDto> interiorListPast();
	
	//포폴 인기순
	public List<InteriorDto> interiorListPopular();
	
	//포폴 필터
	public List<InteriorDto> interiorFilter(Map<String,Object>param);
	
	//포폴 상세페이지
	public InteriorDto detailPortfolio(int ino);
	
	//포폴 상세페이지 조회수
	public int updateCnt(int ino);
	
	//상세페이지 같은 스타일 추천
	public List<InteriorDto> recommendStyle(@Param("ino") int ino, @Param("istyle") String istyle);
	
	//상세페이지 같은 평수 추천
	public List<InteriorDto> recommendArea(@Param("ino") int ino, @Param("darea") String darea);
	
	public int interiorCnt();
	
	public List<InteriorDto> modelList();
	public List<InteriorDto> modelFilter(Map<String, Object> param);
	
	public List<InteriorDto> interiorBestList();
}
