package com.taiso.reservation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.car.db.CarDTO;
import com.taiso.member.db.MemberDTO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class ReservationDate implements Reservation {

	@Override
	public ReservationForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : ReservationDate_execute() 호출");
		
//		
//		// 예약 일시 정보 저장
		ReservationDTO rezDTO = new ReservationDTO();
		MemberDTO mDTO = new MemberDTO();
		
		
	    // 예약시간 정보 세션에 저장
        HttpSession session = request.getSession();
      
        String mem_id = (String) session.getAttribute("mem_id");
//        
//       session.setAttribute("mem_id",request.getParameter("mem_id"));
        session.setAttribute("rez_pick_date",request.getParameter("rez_pick_date"));
        session.setAttribute("rez_off_date",request.getParameter("rez_off_date"));
        session.setAttribute("rez_pick_time",request.getParameter("rez_pick_time"));
        session.setAttribute("rez_off_time",request.getParameter("rez_off_time"));
        session.setAttribute("rez_site",request.getParameter("car_site"));
      
        
        // 세션정보 DTO에 저장
		// 토탈계산 - totalDate 
        
        mDTO.setMem_id((String)session.getAttribute("mem_id"));
        rezDTO.setRez_rentalDate((String)session.getAttribute("rez_pick_date"));
        rezDTO.setRez_returnDate((String)session.getAttribute("rez_off_date"));
        rezDTO.setRez_site((String)session.getAttribute("rez_site"));
        

        System.out.println("rezDTO.getRez_rentalDate : "+rezDTO.getRez_rentalDate()); // 제대로 담겼는지 확인용 나중에 삭제***
        System.out.println("rezDTO.getRez_returnDate : "+rezDTO.getRez_returnDate());
		
        
		// DAO 객체 생성 - 예약정보저장 메서드 호출
		ReservationDAO rezDAO = new ReservationDAO();
		CarDTO carDTO = new CarDTO();
		rezDAO.resevationSave(rezDTO,carDTO);
		
		
		//페이지 이동
		ReservationForward forward = new ReservationForward();
		forward.setPath("./carList.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
