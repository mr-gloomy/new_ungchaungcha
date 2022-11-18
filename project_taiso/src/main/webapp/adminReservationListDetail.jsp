<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자예약조회및취소상세리스트</title>

<script type="text/javascript">
	function goBack() {
		window.history.back();
	}
</script>
</head>
<body>
<article>
<h1> 관리자 예약 조회 및 취소 상세 리스트 </h1>
<h1></h1>
<%-- ${adminGoodsList } --%>
		<b>${adminTotalDTO.mem_name}의 예약정보</b>
<table border="1" >
		<tr>
			<th>회원아이디</th>
			<td>${adminTotalDTO.mem_id }</td>
			<th>회원조회</th>
			<td>${adminTotalDTO.mem_phone }</td>
		</tr>
		<tr>
			<th>예약번호</th>
			<td>${adminTotalDTO.rez_uqNum }</td>
			<th>대여/반납장소</th>
			<td>${adminTotalDTO.rez_site }</td>
		</tr>
		<tr>
			<th>대여일시</th>
			<td>${adminTotalDTO.rez_rentalDate }</td>
			<th>반납일시</th>
			<td>${adminTotalDTO.rez_returnDate }</td>
		</tr>
</table>	

<br><br>

		<b>${adminTotalDTO.mem_name}의 예약차량정보</b>
<table border="1" >
		<tr>
			<th>차량코드</th>
			<td>${adminTotalDTO.car_code }</td>
			<th>차량브랜드</th>
			<td>${adminTotalDTO.car_brand }</td>
			<th>차량종류</th>
			<td>${adminTotalDTO.car_name }</td>
		</tr>
		<tr>
			<th>차량옵션</th>
			<td colspan="3">${adminTotalDTO.car_op }</td>
			<th>차량브랜드</th>
			<td>${adminTotalDTO.car_brand }</td>
		</tr>
		<tr>
			<th>차량연식</th>
			<td>${adminTotalDTO.car_year }</td>
			<th>차량연료</th>
			<td>${adminTotalDTO.car_fuel }</td>
			<th>차량가격</th>
			<td>${adminTotalDTO.car_price }</td>
		</tr>
</table>
<br><br>
	<b>${adminTotalDTO.mem_name}의 결제정보</b>
<table border="1" >
		<tr>
			<th>결제고유번호</th>
			<td>${adminTotalDTO.pay_uqNum }</td>
		</tr>
		<tr>
			<th>결제수단</th>
			<td>${adminTotalDTO.pay_method }</td>
		</tr>
		<tr> 
			<th>보험금액</th>
			<td>${adminTotalDTO.car_insurance}</td>
		</tr>
		<tr>
			<th>총결제금액</th>
			<td>${adminTotalDTO.pay_total }</td>
		</tr>
		<tr>
			<th>결제상태</th>
			<td>${adminTotalDTO.pay_status }</td>
		</tr>
		<tr>
			<th>결제시간</th>
			<td>${adminTotalDTO.pay_date }</td>
		</tr>

		
</table>

<br><br>
	<b>운전자정보</b>
<table border="1" >
		<tr>
			<th>이름</th>
			<td>${adminTotalDTO.rez_rentalDate }</td>
		</tr>
		<tr>
		<th>법정생년월일</th>
			<td>${adminTotalDTO.rez_rentalDate }</td>
		</tr>
		<tr>
			<th>휴대폰번호</th>
			<td>${adminTotalDTO.rez_rentalDate }</td>
		</tr>
		<tr>
			<th>면허번호</th>
			<td>${adminTotalDTO.license_num }</td>
		</tr>
		<tr>
			<th>면허발급일자</th>
			<td>${adminTotalDTO.license_issueDate }</td>
		</tr>
		<tr>
			<th>면허증종류</th>
			<td>${adminTotalDTO.license_type }</td>
		</tr>
</table>
	<br><br>
	
	<input type="button" value="예약조회.rez로 돌아가기" onclick="location.href='./AdminReservationListAction.rez';">
	<input type="button" value="예약조회.jsp로 돌아가기" onclick="location.href='./admin_reservation_list.jsp';">
	<input type="button" value="예약조회.back()로 돌아가기" onclick="goBack();">
	<input type="button" value="예약취소" onclick=" location.href='./ReservationCancel.rez';">

</article>
</body>
</html>