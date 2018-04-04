package com.study.board.web;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.study.board.service.BoardServiceImpl;
import com.study.board.vo.Board;
import com.study.board.vo.BoardSearch;
import com.study.servlet.IController;

public class BoardViewController implements IController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		String bo_no = request.getParameter("bo_no");
		// 파라미터가 널이거나, 비어있거나, 숫자가 아니면 ??
		if(bo_no == null || bo_no.trim().equals("") ){
			return "redirect:/board/boardList.do";
		}

		BoardServiceImpl boardService = new BoardServiceImpl();
		Board board = boardService.getBorad( Integer.parseInt(bo_no) );
		request.setAttribute("board", board);
	  
		return "/WEB-INF/view/board/boardView.jsp";
	}

}













