package com.taiso.car.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.car.db.CarDAO;

public class CarListAction implements Car {

	@Override
	public CarForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println(" M : CarListAction_execute() 호출 ");
		
		// 전달정보 저장
		String item = request.getParameter("item");
		
		if(item==null) {
			item = "all";
		}
		System.out.println(" M : item : "+item);
		
		
		
		//  예약시간 정보 저장
//		String rez_pick_date = request.getParameter("rez_pick_date");
//		String rez_off_date = request.getParameter("rez_off_date");
//		String rez_pick_time = request.getParameter("rez_pick_time");
//		String rez_off_time = request.getParameter("rez_off_time");
//		String jijum = request.getParameter("jijum");
		
		// DB에 저장된 상품정보를 가져오기
		CarDAO cDAO = new CarDAO();
		List carsList = cDAO.getCarList(item);
		
		// 연결된 view 페이지로 정보 전달
		request.setAttribute("carsList", carsList);

		
		CarForward forward = new CarForward();
		forward.setPath("./car/carList.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
