package com.site.p0823.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.p0823.Vo.UserVo;
import com.site.p0823.Vo.user_DetailsVo;
import com.site.p0823.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	//회원가입
	@Override
	public void insertUserAdd(UserVo userVo) {
		userMapper.insertUserAdd(userVo);
	}
	
	//로그인
	@Override
	public UserVo selectLoginOne(String in_userEmail, String in_userPw) {
		UserVo userVo;
		userVo = userMapper.selectLoginOne(in_userEmail,in_userPw);
		System.out.println(in_userPw);
		return userVo;
	}
	//배송상세 이메일 가져오기
	@Override
	public UserVo selectUserOneSearch(int s_id) {
		UserVo userVo = userMapper.selectUserOneSearch(s_id);
		return userVo;
	}

	//배송상세부분 회원상세 가져오기
	@Override
	public user_DetailsVo selectInformationYes(int s_id) {
		user_DetailsVo user_DetailsVo = userMapper.selectInformationYes(s_id);
		return user_DetailsVo;
	}
	//배송상세부분 회원상세 저장하기
	@Override
	public void insertDetailsSet(user_DetailsVo user_DetailsVo, int s_id) {
		userMapper.insertDetailsSet(user_DetailsVo, s_id);
	}

}//class
