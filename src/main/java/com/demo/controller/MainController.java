package com.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.beans.ContentBean;
import com.demo.service.BoardService;
import com.demo.service.MainService;

@Controller
public class MainController {
    
	@Autowired
	private MainService mainService;

	@GetMapping("/main")
	public String main(Model model) {
		
		ArrayList<List<ContentBean>> list = new ArrayList<List<ContentBean>>();
		list.add(mainService.getMainList(1));
	
		model.addAttribute("list", list);
		
	
				
		return "main";
	}
	
	
	
	
}
