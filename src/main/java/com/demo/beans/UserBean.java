package com.demo.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class UserBean {
	
	private int user_idx;
	
	
	@Size(min=2, max=4, message = "이름은 2자에서 4자까지 ")
	@Pattern(regexp = "[가-힣]*", message = "한글만 사용가능")
	private String user_name;
	
	private String user_id; //아이디
	private String user_pw;//비밀번호
	private String user_pw2; //비밀번호 확인
	
}
