package com.site.p0823.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.site.p0823.Vo.Construction_InquiryVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserCartVo;

@Mapper
public interface MypageMapper {

	//문의내역 리스트
	ArrayList<Construction_InquiryVo> selectInquiryList(String nickname);

	//장바구니 넣기
	int insertCartGo(ProductVo productVo, int s_id, int count);

	//장바구니 추가
	int updateCartGo(ProductVo productVo, int s_id, int count);

	//장바구니 출력
	ArrayList<UserCartVo> selectMyCartList(int s_id);


	
	
	
	
}//class
