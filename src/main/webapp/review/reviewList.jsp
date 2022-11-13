<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>

	<%
		// 회원에서 id(세션에 저장) 받고, 예약에서 회원 아이디에 대한 차량 코드 받아서 차량 카테고리 저장 
		// (회원) 예매내역 조회에서 - 수정버튼 클릭하면 ReviewUpdate.rev로 넘어갈 예정
		// 컨트롤러에서 ReviewUpdate.rev는 reviewUpdate.jsp로 이동, 디비에서 해당 글 정보 받아서 reviewUpdate.jsp로 이동
		// reviewUpdate.jsp에서 정보 입력하고 수정 버튼 누르면 ReviewUpdateAction.rev로 이동
		// 컨트롤러에서 ReviewUpdateAction 실행하고 다시 예매내역 조회로 이동
		
		// 근데 예매내역 조회에서 ReviewUpdate.rev로 rev_num을 어떻게 보낼까 ....? - 고민해보기 => 해결 된듯?
				
		// (회원) 예매내역 조회에서 삭제버튼 클릭하면 ReviewDelete.rev로 넘어감
		// 컨트롤러에서 ReviewDelete.rev는 페이지 이동 없이 디비에서 해당 글 삭제하고 다시 reviewList.jsp로 이동
		
		
		session.setAttribute("mem_id", "admin1");
		session.setAttribute("rez_uqNum", 1);
				
	%>		
			<form action="./ReviewWrite.rev">
				<input type = "submit" value = "리뷰 등록">
				<input type = "hidden" name = "rez_uqNum" value = "1">
			</form>
			
			<!-- <a href = "./ReviewWrite.rev?rez_uqNum=1">리뷰등록</a> -->
			
			<input type = "button" value = "리뷰 등록" onclick="location.href='./ReviewWrite.rev?rez_uqNum=1;">
			<input type = "button" value = "수정" onclick="location.href='./ReviewUpdateAction.rev?rev_num=2';">
			<input type = "button" value = "삭제" onclick="location.href='./ReviewDeleteAction.rev?rev_num=2';">
			<a href = "./ReviewListAction.rev">리뷰확인</a>
</body>
</html>