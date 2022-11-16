package com.taiso.notice.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.notice.db.noticeDAO;

public class AdminNoticeDeleteAction implements Notice {

	@Override
	public NoticeForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println(" M : AdminNoticeDeleteAction_execute 호출 ");
		
		// 전달된 파라미터
		int bo_num = Integer.parseInt(request.getParameter("bo_num"));
		String bo_pass = request.getParameter("bo_pass");
		
		String pageNum = request.getParameter("pageNum");
		
		// DAO 객체 
		noticeDAO dao = new noticeDAO();
		
		// 글 삭제하기
		int result = dao.deleteNotice(bo_num, bo_pass);
		
		// 페이지 이동
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(result == 1) {
			out.print("<script>");
			out.print(" alert('게시판 글 삭제 완료'); ");
			out.print(" location.href='./AdminNoticeList.nb?pageNum="+pageNum+"'; ");
			out.print("</script>");
			out.close();
			
			return null;		
		} else if(result == 0) {
			out.print("<script>");
			out.print(" alert(' 비밀번호 오류 '); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close();
			
			return null;			
		} else {
			out.print("<script>");
			out.print(" alert(' 글 없음 '); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close();
			
			return null;
		}		
		
	}

}
