package com.site.p0823.service;

import java.util.ArrayList;
import java.util.List;

import com.site.p0823.Vo.Construction_InquiryVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserCartVo;

public interface MyPageService {

	//문의내역 리스트
	ArrayList<Construction_InquiryVo> selectInquiryList(String nickname);
	
	//기존물풀 없을시 장바구니 넣기
	int insertCartGo(ProductVo productVo,int s_id,int count);

	//기존물풀 있을시 장바구니 추가
	int updateCartGo(ProductVo productVo, int s_id, int count);
	
	//장바구니 출력
	ArrayList<UserCartVo> selectMyCartList(int s_id);


}
