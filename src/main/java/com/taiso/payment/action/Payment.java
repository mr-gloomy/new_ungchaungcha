package com.taiso.payment.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Payment {

	
		public PaymentForward execute(HttpServletRequest request,
									 HttpServletResponse response) throws Exception; 
	
}
