package com.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.beans.UserBean;
import com.demo.mapper.UserMapper;

@Service
public class UserService {
 
	@Autowired
	private UserMapper userMapper;
	
	//아이디중복체크 
	public boolean checkuserIdExist(String user_id) {
		String user_name = userMapper.checkUserIdExist(user_id);
		
		if(user_name == null) {
			return true;
		}else {
			return false;
		}
	}
	
	//유저 저장하기
	public void addUserInfo(UserBean joinUserBean) {
		userMapper.addUserInfo(joinUserBean);
	}
	
}
