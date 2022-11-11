package com.taiso.car.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Car {
	
	public CarForward execute(HttpServletRequest request, 
								 HttpServletResponse response) throws Exception;
	
	
}
