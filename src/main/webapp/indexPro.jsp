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

	String cars = request.getParameter("cars");
	String rDate = request.getParameter("rDate");
	String rtDate = request.getParameter("rtDate");
	String rSite = request.getParameter("rSite");


%>

<%-- rez_total_date : <%=rez_total_date %><br> --%>
<%-- rez_rentalDateNT : <%=rez_rentalDateNT %><br> --%>
<%-- rez_returnDateNT : <%=rez_returnDateNT %><br> --%>
rez_rentalDate : <%=rDate %><br>
rez_returnDate : <%=rtDate %><br>
<%-- rez_time_pick : <%=rez_time_pick %><br> --%>
<%-- rez_time_off : <%=rez_time_off %><br> --%>
rez_site : <%=rSite %><br>
cars = <%=cars %>




