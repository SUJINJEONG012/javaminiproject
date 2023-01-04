package com.demo.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.demo.beans.ContentBean;
import com.demo.beans.LoginUserBean;
import com.demo.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@Resource(name = "loginUserBean")
	private LoginUserBean loginUserBean;
	
	
	@GetMapping("/main")
	public String main(@RequestParam("board_info_idx") int board_info_idx, Model model,@RequestParam(value = "page", defaultValue = "1") int page)  {
		
		model.addAttribute("board_info_idx", board_info_idx);
		
		System.out.println("board_info_idx : 컨트롤러 @@@ " + board_info_idx);
		
		String boardInfoName = boardService.getBoardInfoName(board_info_idx);
		model.addAttribute("boardInfoName", boardInfoName);
		
		List<ContentBean> contentList = boardService.getContentList(board_info_idx );
		model.addAttribute("cotentList", contentList);
		
//		PageBean pageBean = boardService.getContentCnt(board_info_idx, page);
//		model.addAttribute("pageBean", pageBean);
//		
//		model.addAttribute("page", page);
		System.out.println("cotentList : " + contentList.toString());
		System.out.println("board_info_idx ::!!!!!" + board_info_idx);
		
		return "board/main";
		
	}

	@GetMapping("/read")
	public String read(@RequestParam("board_info_idx") int board_info_idx,
					   @RequestParam("content_idx") int content_idx, 
					   @RequestParam(value = "page", defaultValue = "1") int page,
					   Model model) {
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);
		model.addAttribute("loginUserBean", loginUserBean);
		model.addAttribute("page", page);
		//글 번호로 DB에서 게시글 내용 읽어오기
		//ContentBean readContentBean = boardService.getContentInfo(content_idx);
		//model.addAttribute("readContentBean", readContentBean);
		return "board/read";
	}

	
	@GetMapping("/write")
	public String write(@ModelAttribute("writeContentBean") ContentBean writeContentBean, @RequestParam("board_info_idx") int board_info_idx) {
		writeContentBean.setContent_board_idx(board_info_idx);
		return "board/write";
	}
	
	
	

	@PostMapping("/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeContentBean") ContentBean writeContentBean,
			BindingResult result) {
		
		if (result.hasErrors()) {
			return "board/write";
		}
		//db에 저장
		boardService.addContentInfo(writeContentBean);
		
		return "board/write_success";
	}
	
	

	@GetMapping("modify")
	public String modify() {
		return "board/modify";
	}

	@GetMapping("/delete")
	public String delete() {
		return "board/delete";
	}

}
