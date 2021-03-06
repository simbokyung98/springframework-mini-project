package com.mycompany.webapp.dao.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.interior.InteriorDto;
import com.mycompany.webapp.dto.interior.MainConsultDto;
import com.mycompany.webapp.dto.mypage.InteriorProgressDto;
import com.mycompany.webapp.dto.mypage.InteriorProgressFileDto;
import com.mycompany.webapp.dto.mypage.ReferenceModelDto;
import com.mycompany.webapp.dto.mypage.ReviewDto;
import com.mycompany.webapp.dto.mypage.SolutionDto;
import com.mycompany.webapp.dto.product.AfterServiceDto;
import com.mycompany.webapp.dto.product.PurchaseDetailDto;
import com.mycompany.webapp.dto.product.PurchaseDto;

@Mapper
public interface MypageDao {

	

	public int insertReview(ReviewDto review);
	
	public int updateReviewList(ReviewDto review);

	public UsersDto selectUserName(String email);

	public int deviceCount();

	public List<AfterServiceDto> selectByAsPage(Pager pager);

	public int latestAsNumber();

	public AfterServiceDto getAsInfoDetail(int receiptNo);

	public int getTotalOrderListNum(String email);
	
	public List<PurchaseDto> getPurchaseList(Pager pager);

	public List<PurchaseDetailDto> getOrderDetailList(int purchaseNumber);

	public int getTotalReviewBeforeNum(String email);

	public List<ReviewDto> getReviewBeforeList(Pager pager);

	public int getTotalReviewAfterNum(String email);

	public List<ReviewDto> getReviewAfterList(Pager pager);

	public InteriorDto getInteriorC(String email);

	public int getTotalInteriorCounseling(String email);

	public int getTotalRemodelingCounseling(String email);

	public int getTotalASCounseling(String email);

	public MainConsultDto getMpInteriorList(String email);

	public UsersDto getMpUserInfo(String email);

	public int updateUserInfo(UsersDto users);

	public int deleteUserInfo(String email);

	public MainConsultDto getMpRemodeling(String email);

	public int getTotalUserInteriorList(String email);

	public List<MainConsultDto> getUserInteriorList(Pager pager);

	public int getTotalUserRemodelingList(String email);

	public List<MainConsultDto> getUserRemodelingList(Pager pager);

	public MainConsultDto getMainConElement(int selNum);

	public MainConsultDto getremodelingElement(int selNum);

	public InteriorProgressDto getProgressStep(int consultNo);
	
	public List<InteriorProgressFileDto> getStep1Files(int consultNo);

	public int getLatestInteriorNo(String email);

	public List<SolutionDto> getSolutionList(int consultNo);

	public InteriorProgressDto getProgressStep2(int conNum);
	
	public List<InteriorProgressFileDto> getStep2Files(int conNum);

	public InteriorProgressDto getProgressStep3(int conNum);
	
	public List<InteriorProgressFileDto> getStep3Files(int conNum);
	
	public List<ReferenceModelDto> getPortfolioList(int conNum);

	public InteriorProgressDto getProgressStep4(int conNum);
	
	public List<InteriorProgressFileDto> getStep4Files(int conNum);

	public InteriorProgressDto getProgressStep5(int conNum);

	public List<InteriorProgressFileDto> getStep5Files(int conNum);
	
	public int getIno6(int conNum);

	public ReferenceModelDto getProgressStep6(int ino6);

	public List<PurchaseDetailDto> getOrderReview(Pager pager);

	public List<PurchaseDetailDto> getOrderReviewFin(String email);

	public int getCheckNull(String email);

	public int getTotalReviewFin(String email);

	public List<ReviewDto> getOrderReviewFinList(Pager pager);

	public int getTotalOrderReviewList(String email);

	public AfterServiceDto getAfterService(String email);

}
