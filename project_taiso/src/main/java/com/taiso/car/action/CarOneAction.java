package com.taiso.car.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.car.db.CarDAO;
import com.taiso.car.db.CarDTO;

public class CarOneAction implements Car {

	@Override
	public CarForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// 넘어온 데이터 받기
		int car_code = Integer.parseInt(request.getParameter("car_code"));
		
		// DAO 생성
		CarDAO dao = new CarDAO();
		CarDTO cDTO = dao.getOneCarList(car_code);
		
		HttpSession session = request.getSession();
		session.setAttribute("cDTO", cDTO);
		
		CarForward forward = new CarForward();
		forward.setPath("./indexPro.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
