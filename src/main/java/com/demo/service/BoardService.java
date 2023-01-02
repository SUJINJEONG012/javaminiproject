package com.demo.service;

import org.springframework.stereotype.Service;

import com.demo.beans.ContentBean;

@Service
public class BoardService {

	public void addContentInfo(ContentBean writeContentBean) {
		
		System.out.println(writeContentBean.getContent_subject());
		System.out.println(writeContentBean.getContent_text());
		System.out.println(writeContentBean.getContent_file());
	}
}
