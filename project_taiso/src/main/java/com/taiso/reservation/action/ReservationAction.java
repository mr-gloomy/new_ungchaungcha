package com.taiso.reservation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.taiso.car.db.CarDAO;
import com.taiso.car.db.CarDTO;
import com.taiso.member.db.MemberDAO;
import com.taiso.member.db.MemberDTO;
import com.taiso.reservation.db.ReservationDAO;
import com.taiso.reservation.db.ReservationDTO;

public class ReservationAction implements Reservation {

	@Override
	public ReservationForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println(" M : ReservationAction_execute() 호출");

//		 ******************************* 회원정보 없어서 주석처리한 것. 로직 확인할 때 주석풀어주세요
      // 로그인 세션 저장
      HttpSession session = request.getSession();
      String mem_id = (String) session.getAttribute("mem_id");
      
      
      ReservationForward forward = new ReservationForward();
      if(mem_id == null) {
         forward.setPath("./MemberLogin.me"); // ******** 어느페이지로 이동시킬지 정하기
         forward.setRedirect(true);      
         return forward; 
      }

		int car_code = Integer.parseInt(request.getParameter("car_code"));

		// 차량 정보 저장
		CarDAO dao = new CarDAO();
		CarDTO carDTO = dao.getOneCarList(car_code); // 나중에 예약테이블 car_code랑 조인하기

		System.out.println("carDTO : " + carDTO); // 차량 정보 가져오는지 확인용


		// request 영역에 저장
		request.setAttribute("carDTO", carDTO);

		
		// ******************************* 회원정보 없어서 주석처리한 것. 로직 확인할 때 주석풀어주세요
      // 전달 정보(mem_id) 

      
      // 회원DAO - 회원정보 가져오기
//      ReservationDAO rezDAO = new ReservationDAO(); // ******회원DAO로 바꾸기
//      MemberDTO mDTO = rezDAO.getMemberInfo(mem_id); 
      System.out.println("@@@@@@@@@@"+mem_id );
      MemberDAO mDAO = new MemberDAO();
      MemberDTO mDTO = mDAO.getMember(mem_id);
//      
      System.out.println(mDTO);
      
      // request 영역에 저장
      request.setAttribute("mDTO", mDTO);

		
		
		forward = new ReservationForward();
		// 페이지 이동(./views/reservationForm.jsp)
		forward.setPath("./views/reservationForm.jsp");
		forward.setRedirect(false);
		return forward;
	}

}