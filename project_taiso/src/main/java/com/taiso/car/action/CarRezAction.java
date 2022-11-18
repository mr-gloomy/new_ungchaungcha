package com.taiso.car.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CarRezAction implements Car {

	@Override
	public CarForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println(" M : CarRezAction_execute() 호출 ");
		// 예약시간 정보 세션에 저장
		HttpSession session = request.getSession();
		
		session.setAttribute("rez_pick_date",request.getParameter("rez_pick_date"));
		session.setAttribute("rez_off_date",request.getParameter("rez_off_date"));
		session.setAttribute("rez_pick_time",request.getParameter("rez_pick_time"));
		session.setAttribute("rez_off_time",request.getParameter("rez_off_time"));
		session.setAttribute("rez_site",request.getParameter("rez_site"));
		
		System.out.println(session.getAttribute("rez_pick_date"));
		System.out.println(session.getAttribute("car_site"));
		
		CarForward forward = new CarForward();
		forward.setPath("./CarList.ca");
		forward.setRedirect(true);
		
		return forward;
	}

}
