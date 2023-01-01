package com.demo.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.demo.beans.UserBean;

public interface UserMapper {

 @Select("select user_name " + "from user_table "+ "where user_id = #{user_id}")
 String checkUserIdExist(String user_id);
 
 @Insert("insert into user_table (user_idx, user_name, user_id,user_pw)" + 
  "values ( #{user_name}, #{user_id}, #{user_pw})") 
 void addUserInfo(UserBean joinUserBean);
 
}