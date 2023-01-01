package com.demo.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.SessionScope;

//UserBean의 객체를 loginUserBean 이름으로 세션에 등록함
@Component("loginUserBean")
@SessionScope
public class LoginUserBean {

	private int user_idx;
	private String user_name;
	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String user_id;

	
	@Size(min=4, max=20)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String user_pw;

	private boolean userLogin; // 로그인상태
	public LoginUserBean() {
		this.userLogin = false;  //처음로그인상태는 false
	}
	




}
