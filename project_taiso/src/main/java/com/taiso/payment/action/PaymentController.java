package com.taiso.payment.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taiso.reservation.action.Reservation;
import com.taiso.reservation.action.ReservationForward;

@WebServlet("*.pay")
public class PaymentController extends HttpServlet {


	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 가상주소 계산
		String requestURI = request.getRequestURI();
	    System.out.println(" C : requestURI : " + requestURI);
	    String ctxPath = request.getContextPath();
	    System.out.println(" C : ctxPath : " + ctxPath);
	    String command = requestURI.substring(ctxPath.length());
	    System.out.println(" C : command : " + command);
  

		System.out.println(" C : 1. 가상주소 계산 끝 \n");
		Payment action = null;
		PaymentForward forward = null;
	    
	    
	    
	    // 2. 가상주소 매핑(패턴1,2,3)
		
	    // 결제 페이지 이동 (Payment
	    
	    
	    
	    
	    
	    
	    
	    
	    System.out.println(" C : 2. 가상주소 매핑 끝");
	      
	    // 3. 페이지 이동
	    
	    
	    
	}
	
	
	
	
	
	
	
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
	}

		

	}


