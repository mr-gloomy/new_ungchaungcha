<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 	String rez_total_date = request.getParameter("rez_total_date");
	
// 	String rez_time_pick = request.getParameter("rez_time_pick");
// 	String rez_time_off = request.getParameter("rez_time_off");
// 	String rez_site = request.getParameter("rez_site");
	
// 	String[] rez_total_dateArr = rez_total_date.split("-");
// 	String rez_rentalDateNT = rez_total_dateArr[0];
// 	String rez_returnDateNT = rez_total_dateArr[1];
	
// 	String rez_rentalDate = rez_rentalDateNT+"-"+rez_time_pick;
// 	String rez_returnDate = rez_returnDateNT+"-"+rez_time_off;

// 	String rez_total_date = (String) session.getAttribute("rez_total_date");
// 	String rez_time_pick = (String) session.getAttribute("rez_time_pick");
// 	String rez_time_off = (String) session.getAttribute("rez_time_off");
// 	String rez_site = (String) session.getAttribute("rez_site");
	
	
// 	System.out.println(rez_total_date);
	
// 	String[] rez_total_dateArr = rez_total_date.split(" - ");
	
// 	System.out.println(rez_total_dateArr);
	
// 	String rez_rentalDateNT = rez_total_dateArr[0];
// 	String rez_returnDateNT = rez_total_dateArr[1];

// 	String rez_rentalDate = rez_rentalDateNT + "-" + rez_time_pick;
// 	String rez_returnDate = rez_returnDateNT + "-" + rez_time_off;

	String rez_pick_date = (String) session.getAttribute("rez_pick_date");
	String rez_off_date = (String) session.getAttribute("rez_off_date");
	String rez_pick_time = (String) session.getAttribute("rez_pick_time");
	String rez_off_time = (String) session.getAttribute("rez_off_time");
	String jijum = (String) session.getAttribute("jijum");

	String cars = request.getParameter("cars");


%>

${sessionScope.rez_pick_date } <br>
${sessionScope.rez_off_date } <br>
${sessionScope.rez_pick_time } <br>
${sessionScope.rez_off_time } <br>
${sessionScope.jijum } <br>
<%=cars %>


