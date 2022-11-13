package com.taiso.car.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String rez_total_date = request.getParameter("rez_total_date");
		String rez_time_pick = request.getParameter("rez_time_pick");
		String rez_time_off = request.getParameter("rez_time_off");
		String rez_site = request.getParameter("rez_site");
		
		String[] rez_total_dateArr = rez_total_date.split("-");
		String rez_rentalDateNT = rez_total_dateArr[0];
		String rez_returnDateNT = rez_total_dateArr[1];

		String rez_rentalDate = rez_rentalDateNT+"-"+rez_time_pick;
		String rez_returnDate = rez_returnDateNT+"-"+rez_time_off;
		
		//  예약시간 정보 저장
		
//		System.out.println(" "+rez_rentalDate);
//		System.out.println(" "+rez_returnDate);
//		System.out.println(" "+rez_site);
		
		// DB에 저장된 상품정보를 가져오기
		CarDAO cDAO = new CarDAO();
		List carsList = cDAO.getCarList(item);
		
		// 연결된 view 페이지로 정보 전달
		request.setAttribute("carsList", carsList);
		request.setAttribute("rez_rentalDate", rez_rentalDate);
		request.setAttribute("rez_returnDate", rez_returnDate);
		request.setAttribute("rez_site", rez_site);
		
		CarForward forward = new CarForward();
		forward.setPath("./carList.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
