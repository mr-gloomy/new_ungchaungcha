package com.taiso.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.member.db.MemberDAO;

public class MemberRemoveProAction implements Member {

	@Override
	public MemberForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberRemoveProAction_execute 호출");
		
		// 전달정보 저장
		HttpSession session = request.getSession();
		String mem_id = (String) session.getAttribute("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		
		System.out.println(mem_id);
		System.out.println(mem_pw);
		
		// DAO - 회원정보 삭제(deleteMember())
		MemberDAO mDAO = new MemberDAO();
		int result = mDAO.memberRemove(mem_id, mem_pw);
		
		System.out.println(" M : result : "+result);
		
		
		// 페이지 이동
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(result == -1) {
			out.print("<script>");
			out.print(" alert('등록된 회원이 아닙니다.'); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close();
			
			return null;
			
		}else if(result == 0) {
			out.print("<script>");
			out.print(" alert('비밀번호가 틀렸습니다.'); ");
			out.print(" history.back(); ");
			out.print("</script>");
			out.close();
			
			return null;
			
			
		// 주소 수정하기!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		}else { // result == 1
			// 세션 초기화
			// HttpSession session = request.getSession();
			session.invalidate();
			
			out.print("<script>");
			out.print(" alert('회원탈퇴가 완료되었습니다.'); ");
			out.print(" location.href='./MemberLogin.me'; ");
			out.print("</script>");
			out.close();
			
			return null;
		}
	}
}
