package com.taiso.member.action;

import java.io.PrintWriter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.member.db.MemberDAO;
import com.taiso.member.db.MemberDTO;

public class MemberFindPwAction implements Member {

	@Override
	public MemberForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : MemberFindPwAction_execute() 호출 ");
		
		// 전달정보 저장(mem_id, mem_name, mem_email)
		String mem_id = request.getParameter("mem_id");
		String mem_name = request.getParameter("mem_name");
		String mem_email = request.getParameter("mem_email");
		
		// DAO - 아이디 찾기 메서드
		MemberDAO mDAO = new MemberDAO();
		MemberDTO mDTO = mDAO.memberFindPw(mem_id,mem_name,mem_email);
		
		System.out.println(" M : 비밀번호 찾기 필요 정보 : " +mDTO);
		
		// 결과에 따른 페이지 이동(JS)	
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(mDTO != null) {
			out.print("<script>");
			out.print("	alert('"+mem_name+"님의 비밀번호는 "+mDTO.getMem_pw()+"입니다.'); ");
			out.print(" location.href='./MemberFindPwResult.me'; ");
			out.print("</script>");
			out.close();
			
			return null;	
			
		}else { 
			out.print("<script>");
			out.print(" alert('일치하는 회원정보가 존재하지 않습니다.'); ");
			out.print(" location.href='./MemberJoin.me'; ");
			out.print("</script>");
			out.close();
			
			return null;
		}

	}

}