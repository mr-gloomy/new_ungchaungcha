package com.taiso.reservation.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Reservation {

	
		public ReservationForward execute(HttpServletRequest request,
									 HttpServletResponse response) throws Exception; 
	
}