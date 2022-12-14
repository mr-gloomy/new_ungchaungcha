<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>noticeList</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="./css/animate.css">
    <link rel="stylesheet" href="./css/owl.carousel.min.css">
    <link rel="stylesheet" href="./css/owl.theme.default.min.css">
    <link rel="stylesheet" href="./css/magnific-popup.css">
    <link rel="stylesheet" href="./css/aos.css">
    <link rel="stylesheet" href="./css/ionicons.min.css">
    <link rel="stylesheet" href="./css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="./css/jquery.timepicker.css">
    <link rel="stylesheet" href="./css/flaticon.css">
    <link rel="stylesheet" href="./css/icomoon.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/main2.css">
  </head>
  <body>
  <div id="wrap">
	<!-- 헤더들어가는 곳 -->
	<jsp:include page="../inc/top.jsp"/>
	    
    <section class="hero-wrap hero-wrap-2 js-fullheight" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="./admin/adminMain.jsp">admin<i class="ion-ios-arrow-forward"></i></a></span> 
          	<span>notice <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
	<!-- 헤더들어가는 곳 -->
	
	<!-- 메인 -->
	
  	<div class="board_wrap">
        <div class="board_title">
            <strong>[관리자]공지사항</strong>
            <h4> 전체 글 개수 : ${requestScope.totalCnt } 개 </h4>
            <!--  검색 폼 -->
			<div class="n_search" border="1" width="90%">
				<div align="right">
					<input type="text" name="search" >
					<input type="submit" value="Search" class="btn btn-outline-secondary">
				</div>
			</div>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="date">작성일</div>
                    <div class="count">조회수</div>
                    <div class="count">관리</div>
                </div>
                
              <c:forEach var="boDTO" items="${noticeListAll }">
                <div>
                    <div class="num">${boDTO.bo_num }</div>
                    <div class="title">
                    	<a href="./AdminNoticeDatail.nb?bo_num=${boDTO.bo_num }&pageNum=${pageNum}">${boDTO.bo_title }</a>
                    </div>
                    <div class="date">${boDTO.bo_sysdate }</div>
                    <div class="count">${boDTO.bo_readcount }</div>
                    <div class="count">
                    	<a href="./AdminNoticeUpdate.nb?bo_num=${boDTO.bo_num }&pageNum=${pageNum }">수정 | </a>
                    	<a href="./AdminNoticeDelete.nb?bo_num=${boDTO.bo_num }&pageNum=${pageNum }">삭제</a>
                    </div>
                </div>
              </c:forEach>
			</div><br>
              
            <!-- 페이지처리 -->
            <div class="n_page"> 
	  		 <c:if test="${totalCnt != 0}">
                <!-- 페이지번호 -->
                <c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
		         	 <a href="./AdminNoticeList.nb?pageNum=${i }" class="btn btn-outline-primary" >${i }</a> 
		    	</c:forEach>  
			 </c:if>
		   </div>	
  
      </div><br>
      
      <!-- 버튼 -->
      <div>
      	<input type="button" value="새글작성" class="btn btn-primary" onclick="location.href='./AdminNoticeWrite.nb';">
      </div>
           
        </div>
    </div>
  	
  
	<!-- 메인 -->
     
	
	
	<div class="clear"></div>
	<!-- 푸터들어가는 곳 -->
	<jsp:include page="../inc/bottom.jsp" />
	<!-- 푸터들어가는 곳 -->
	</div>
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="20px" height="20px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

  <script src="./js/jquery.min.js"></script>
  <script src="./js/jquery-migrate-3.0.1.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
  <script src="./js/jquery.easing.1.3.js"></script>
  <script src="./js/jquery.waypoints.min.js"></script>
  <script src="./js/jquery.stellar.min.js"></script>
  <script src="./js/owl.carousel.min.js"></script>
  <script src="./js/jquery.magnific-popup.min.js"></script>
  <script src="./js/aos.js"></script>
  <script src="./js/jquery.animateNumber.min.js"></script>
  <script src="./js/bootstrap-datepicker.js"></script>
  <script src="./js/jquery.timepicker.min.js"></script>
  <script src="./js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="./js/google-map.js"></script>
  <script src="./js/main.js"></script>
    
  </body>
</html>