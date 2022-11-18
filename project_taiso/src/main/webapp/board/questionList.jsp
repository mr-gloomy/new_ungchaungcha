<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>questionList.jsp</h1>
   <!-- 전달된 정보 확인 -->
   
<%--    <%=request.getAttribute("boardListAll") %> --%>
<%--	${requestScope.QuestionList } --%>
	
	<h3> 전체 글 개수 : ${requestScope.cnt } 개 </h3>
	
	<table border="1">
	   <tr>
	      <td>번호</td>
	      <td>제목</td>
	      <td>작성자</td>
	      <td>작성일</td>
	   </tr>
	   
	   <c:forEach var="bodto" items="${QuestionList }">
	  	   <tr>
		      <td>${bodto.bo_num }</td>
		      <td>
		     	 <a href="./QuestionContent.bo?bo_num=${bodto.bo_num }">
		     	    ${bodto.bo_title }
	     	 </a>
		      </td>
		      <td>${bodto.mem_id }</td> 
		      <td>${bodto.bo_sysdate }</td>
		   </tr>
	   </c:forEach>
	
	</table>
</body>
</html>