package com.site.p0823.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.p0823.Vo.Construction_InquiryVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserCartVo;
import com.site.p0823.mapper.MypageMapper;


@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MypageMapper mypageMapper;
	
	//문의내역 리스트
	@Override
	public ArrayList<Construction_InquiryVo> selectInquiryList(String nickname) {
		ArrayList<Construction_InquiryVo> list = mypageMapper.selectInquiryList(nickname);
		//List<Construction_InquiryVo> list = null;
		
		return list;
	}
	//장바구니 넣기
	@Override
	public int insertCartGo(ProductVo productVo,int s_id,int count) {
		int result = mypageMapper.insertCartGo(productVo,s_id,count);
		return result;
	}
	//장바구니 추가
	@Override
	public int updateCartGo(ProductVo productVo, int s_id, int count) {
		int result = mypageMapper.updateCartGo(productVo,s_id,count);
		return result;
	}
	//장바구니 출력
	@Override
	public ArrayList<UserCartVo> selectMyCartList(int s_id) {
		ArrayList<UserCartVo> list = mypageMapper.selectMyCartList(s_id);
		return list;
	}

}
