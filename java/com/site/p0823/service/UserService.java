package com.site.p0823.service;

import com.site.p0823.Vo.UserVo;
import com.site.p0823.Vo.user_DetailsVo;

public interface UserService {
	
	//회원가입
	void insertUserAdd(UserVo userVo);
	//로그인
	UserVo selectLoginOne(String in_userEmail, String in_userPw);
	
	//배송상세부분 이메일 가져오기
	UserVo selectUserOneSearch(int s_id);
	//배송상세부분 회원상세 가져오기
	user_DetailsVo selectInformationYes(int s_id);
	//배송상세부분 회원상세 저장하기
	void insertDetailsSet(user_DetailsVo user_DetailsVo,int s_id);

}
