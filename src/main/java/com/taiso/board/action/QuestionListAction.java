package com.taiso.board.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.board.db.BoardDAO;

public class QuestionListAction implements Board {

	@Override
	public BoardForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : QuestionListAction_execute 호출 ! ");
		
		// BoardDAO 객체 생성 
		BoardDAO bodao = new BoardDAO();
		
		// 게시판 전체 글 개수 확인
		int cnt = bodao.getQuestionCount();
		
		System.out.println(" M : 전체 글 개수 : "+cnt+"개");
		
		/**
		 * JSP/boardList.jsp 속 페이정 처리 코드 가져오기.........................
		 */
		
		// DB에 배열 저장
		ArrayList QuestionList = bodao.getQuestionList();
		System.out.println(" M : QuestionList 출력"+QuestionList);
		
		// request 객체에 정보 저장
		request.setAttribute("QuestionList", QuestionList);
		request.setAttribute("cnt", cnt);
		
		// 페이지 이동준비(티켓 생성) 
		// ./board/boardList.jsp
		BoardForward forward = new BoardForward();
		forward.setPath("./board/questionList.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
		
}
