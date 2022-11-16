package com.taiso.admin.car.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.admin.car.db.AdminCarDAO;

public class AdminCarListAction implements AdminCar {

	@Override
	public AdminCarForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : AdminCarListAction_execute() 호출");
		
		// 세션제어(관리저여부)
//		HttpSession session = request.getSession();
//		String id = (String)session.getAttribute("id");
//		
		AdminCarForward forward = new AdminCarForward();
//		if(id == null || !id.equals("admin")) {
//			forward.setPath(""); //메인화면
//			forward.setRedirect(true);
//			return forward;
//		}
				
		// DAO - 상품정보를 모두 가져오는 메서드
		AdminCarDAO acDAO = new AdminCarDAO();
		List adminCarList = acDAO.getAdminCarList();
		
		// 상품정보를 request 영역에 저장
		request.setAttribute("adminCarList", adminCarList);
		
		// 페이지 이동(./center/adminCarList.jsp.jsp)
		forward.setPath("./center/adminCarList.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
