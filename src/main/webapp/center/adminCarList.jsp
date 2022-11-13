<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<!-- ��� ���� -->
<title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">

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
</head>
<body>

	<jsp:include page="../inc/top.jsp"></jsp:include>

	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('../images/bg_3.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Cars <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">����� ���� �����϶�.</h1>
				</div>
			</div>
		</div>
	</section>


	<!-- �ݺ������� DB�� �ִ� ��� ���� �ҷ����� -->
	
						<!-- �ϴܿ� ��ũ �ɾ ���� ���� �ҷ����� -->
						<!-- �Խ��� -->
<article>
<h1> [������] ���� ����Ʈ </h1>
<table id="notice">
<tr><th>��ǰ��ȣ</th>
	<th>�귣���</th>
	<th>������</th>
    <th>ī�װ�</th>
    <th>�̹���</th>
    <th>����</th>
    <th>�ɼ�</th>
    <th>����</th>
    <th>����</th>
    </tr>
    <c:forEach var="dto" items="${adminCarList }">
	<tr>
		<td>${dto.car_code }</td>
		<td>${dto.car_brand }</td>
		<td>${dto.car_name }</td>
		<td class="left">${dto.car_category }</td>
	    <td>
	    	<img src="./upload/${dto.car_file.split(',')[0] }" width="50" height="50">
	    </td>
	    <td>${dto.car_price }</td>
	    <td>${dto.car_op }</td>
	    <td>${dto.car_year }</td>
	    <td>
	    <a href="./AdminCarUpdate.ad?car_code=${dto.car_code }">����</a>
	    /
	    <a href="./AdminCarDelete.ad?car_code=${dto.car_code }">����</a>
	    </td>
    </tr>
	</c:forEach>
</table>
<div id="table_search">
	<input type="button" value="��ǰ���" class="btn"
		onclick="location.href='./AdminCarAdd.ad';">
		
</div>
<div class="clear"></div>
<div id="page_control">

</div>
</article>
<!-- �Խ��� -->
					

			<!-- ����¡ó�� -->
			<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>


	<jsp:include page="../inc/bottom.jsp"></jsp:include>



	<!-- �ڹٽ�ũ��Ʈ, ȭ�� ���� ���� -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="./js/google-map.js"></script>
	<script src="./js/main.js"></script>

</body>
</html>