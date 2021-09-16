package com.site.p0823.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.site.p0823.Vo.UserVo;
import com.site.p0823.Vo.user_DetailsVo;

@Mapper
public interface UserMapper {

	//회원가입
	void insertUserAdd(UserVo userVo);
	
	//로그인
	UserVo selectLoginOne(String id, String pw);

	//배송상세에서 이메일 가지고오기
	UserVo selectUserOneSearch(int s_id);
	
	//배송상세부분 회원상세 가져오기
	user_DetailsVo selectInformationYes(int s_id);

	//배송상세부분 회원상세 저장하기
	void insertDetailsSet(user_DetailsVo user_DetailsVo, int s_id);

}
