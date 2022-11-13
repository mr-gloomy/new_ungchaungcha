<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
		style="background-image: url('images/bg_3.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Car details <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">Car Details</h1>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-section ftco-car-details">
		<div class="row">
			<div class="col-md-12 pills">
				<div class="bd-example bd-example-tabs">
					<div class="d-flex justify-content-center">
						<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

							<li class="nav-item"><a class="nav-link active"
								id="pills-description-tab" data-toggle="pill"
								href="#pills-description" role="tab"
								aria-controls="pills-description" aria-expanded="true">Features</a>
							</li>
							<li class="nav-item"><a class="nav-link"
								id="pills-manufacturer-tab" data-toggle="pill"
								href="#pills-manufacturer" role="tab"
								aria-controls="pills-manufacturer" aria-expanded="true">Description</a>
							</li>
							<li class="nav-item"><a class="nav-link"
								id="pills-review-tab" data-toggle="pill" href="#pills-review"
								role="tab" aria-controls="pills-review" aria-expanded="true">Review</a>
							</li>
						</ul>
					</div>

					<div class="tab-content" id="pills-tabContent">
						<div class="tab-pane fade show active" id="pills-description"
							role="tabpanel" aria-labelledby="pills-description-tab">
							<div class="row">
								<div class="col-md-4">
									<ul class="features">
										<li class="check"><span class="ion-ios-checkmark"></span>Airconditions</li>
										<li class="check"><span class="ion-ios-checkmark"></span>Child
											Seat</li>
										<li class="check"><span class="ion-ios-checkmark"></span>GPS</li>
										<li class="check"><span class="ion-ios-checkmark"></span>Luggage</li>
										<li class="check"><span class="ion-ios-checkmark"></span>Music</li>
									</ul>
								</div>
								<div class="col-md-4">
									<ul class="features">
										<li class="check"><span class="ion-ios-checkmark"></span>Seat
											Belt</li>
										<li class="remove"><span class="ion-ios-close"></span>Sleeping
											Bed</li>
										<li class="check"><span class="ion-ios-checkmark"></span>Water</li>
										<li class="check"><span class="ion-ios-checkmark"></span>Bluetooth</li>
										<li class="remove"><span class="ion-ios-close"></span>Onboard
											computer</li>
									</ul>
								</div>
								<div class="col-md-4">
									<ul class="features">
										<li class="check"><span class="ion-ios-checkmark"></span>Audio
											input</li>
										<li class="check"><span class="ion-ios-checkmark"></span>Long
											Term Trips</li>
										<li class="check"><span class="ion-ios-checkmark"></span>Car
											Kit</li>
										<li class="check"><span class="ion-ios-checkmark"></span>Remote
											central locking</li>
										<li class="check"><span class="ion-ios-checkmark"></span>Climate
											control</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="tab-pane fade" id="pills-manufacturer" role="tabpanel"
							aria-labelledby="pills-manufacturer-tab">
							<p>Even the all-powerful Pointing has no control about the
								blind texts it is an almost unorthographic life One day however
								a small line of blind text by the name of Lorem Ipsum decided to
								leave for the far World of Grammar.</p>
							<p>When she reached the first hills of the Italic Mountains,
								she had a last view back on the skyline of her hometown
								Bookmarksgrove, the headline of Alphabet Village and the subline
								of her own road, the Line Lane. Pityful a rethoric question ran
								over her cheek, then she continued her way.</p>
						</div>

						<!-- 리뷰 탭 시작 -->
						<div class="tab-pane fade" id="pills-review" role="tabpanel"
							aria-labelledby="pills-review-tab">
							<div class="row">
								<div class="col-md-7">
									<h3 class="head">${sessionScope.cnt}개의리뷰</h3>
									<c:forEach var="dto" items="${reviewList }">
										<div class="review d-flex">
											<div class="user-img"
												style="background-image: url(./upload/${dto.rev_image.split(',')[0] })"></div>
											<div class="desc">
												<h4>
													<span class="text-left">${dto.rev_subject }</span> <span
														class="text-right">${dto.rev_date }</span>
												</h4>
												<p class="star">
													<span> <c:forEach begin="1" end="${dto.rev_star }"
															step="1">
															<i class="ion-ios-star"></i>
														</c:forEach>
													</span> <span class="text-right"><a href="#" class="reply"><i
															class="icon-reply"></i></a></span>
												</p>
												<p>${dto.rev_content }</p>
											</div>
										</div>
									</c:forEach>
									<div class="col-md-5">
										<div class="rating-wrap">
										
											<c:set var = "star1" value = "0" />
											<c:set var = "star2" value = "0" />
											<c:set var = "star3" value = "0" />
											<c:set var = "star4" value = "0" />
											<c:set var = "star5" value = "0" />
											
											<c:forEach var="dto" items="${reviewList }">
												<c:if test="${dto.rev_star == 1 }">
													<c:set var= "star1" value="${star1 + 1}"/>
												</c:if>
											</c:forEach>
											<c:forEach var="dto" items="${reviewList }">
												<c:if test="${dto.rev_star == 2 }">
													<c:set var= "star2" value="${star2 + 1}"/>
												</c:if>
											</c:forEach>
											<c:forEach var="dto" items="${reviewList }">
												<c:if test="${dto.rev_star == 3 }">
													<c:set var= "star3" value="${star3 + 1}"/>
												</c:if>
											</c:forEach>
											<c:forEach var="dto" items="${reviewList }">
												<c:if test="${dto.rev_star == 4 }">
													<c:set var= "star4" value="${star4 + 1}"/>
												</c:if>
											</c:forEach>
											<c:forEach var="dto" items="${reviewList }">
												<c:if test="${dto.rev_star == 5 }">
													<c:set var= "star5" value="${star5 + 1}"/>
												</c:if>
											</c:forEach>
											
											<h3 class="head">Give a Review</h3>
											<div class="wrap">
												<p class="star">
													<span>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													</span>
													<span>${star5} 개의 리뷰</span>
												</p>
												<p class="star">
													<span>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													</span>
													<span>${star4 } 개의 리뷰</span>
												</p>
												<p class="star">
													<span>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													</span>
													<span>${star3 } 개의 리뷰</span>
												</p>
												<p class="star">
													<span> 
													<i class="ion-ios-star"></i>
													<i class="ion-ios-star"></i>
													</span>
													<span>${star2 } 개의 리뷰</span>
												</p>
												<p class="star">
													<span>
													<i class="ion-ios-star"></i>
													</span>
													<span>${star1 } 개의 리뷰</span>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 	<section class="ftco-section ftco-no-pt"> -->
	<!-- 		<div class="container"> -->
	<!-- 			<div class="row justify-content-center"> -->
	<!-- 				<div class="col-md-12 heading-section text-center ftco-animate mb-5"> -->
	<!-- 					<span class="subheading">Choose Car</span> -->
	<!-- 					<h2 class="mb-2">Related Cars</h2> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 			<div class="row"> -->
	<!-- 				<div class="col-md-4"> -->
	<!-- 					<div class="car-wrap rounded ftco-animate"> -->
	<!-- 						<div class="img rounded d-flex align-items-end" -->
	<!-- 							style="background-image: url(images/car-1.jpg);"></div> -->
	<!-- 						<div class="text"> -->
	<!-- 							<h2 class="mb-0"> -->
	<!-- 								<a href="car-single.html">Mercedes Grand Sedan</a> -->
	<!-- 							</h2> -->
	<!-- 							<div class="d-flex mb-3"> -->
	<!-- 								<span class="cat">Cheverolet</span> -->
	<!-- 								<p class="price ml-auto"> -->
	<!-- 									$500 <span>/day</span> -->
	<!-- 								</p> -->
	<!-- 							</div> -->
	<!-- 							<p class="d-flex mb-0 d-block"> -->
	<!-- 								<a href="#" class="btn btn-primary py-2 mr-1">Book now</a> <a -->
	<!-- 									href="car-single.html" class="btn btn-secondary py-2 ml-1">Details</a> -->
	<!-- 							</p> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 				<div class="col-md-4"> -->
	<!-- 					<div class="car-wrap rounded ftco-animate"> -->
	<!-- 						<div class="img rounded d-flex align-items-end" -->
	<!-- 							style="background-image: url(images/car-2.jpg);"></div> -->
	<!-- 						<div class="text"> -->
	<!-- 							<h2 class="mb-0"> -->
	<!-- 								<a href="car-single.html">Range Rover</a> -->
	<!-- 							</h2> -->
	<!-- 							<div class="d-flex mb-3"> -->
	<!-- 								<span class="cat">Subaru</span> -->
	<!-- 								<p class="price ml-auto"> -->
	<!-- 									$500 <span>/day</span> -->
	<!-- 								</p> -->
	<!-- 							</div> -->
	<!-- 							<p class="d-flex mb-0 d-block"> -->
	<!-- 								<a href="#" class="btn btn-primary py-2 mr-1">Book now</a> <a -->
	<!-- 									href="car-single.html" class="btn btn-secondary py-2 ml-1">Details</a> -->
	<!-- 							</p> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 				<div class="col-md-4"> -->
	<!-- 					<div class="car-wrap rounded ftco-animate"> -->
	<!-- 						<div class="img rounded d-flex align-items-end" -->
	<!-- 							style="background-image: url(images/car-3.jpg);"></div> -->
	<!-- 						<div class="text"> -->
	<!-- 							<h2 class="mb-0"> -->
	<!-- 								<a href="car-single.html">Mercedes Grand Sedan</a> -->
	<!-- 							</h2> -->
	<!-- 							<div class="d-flex mb-3"> -->
	<!-- 								<span class="cat">Cheverolet</span> -->
	<!-- 								<p class="price ml-auto"> -->
	<!-- 									$500 <span>/day</span> -->
	<!-- 								</p> -->
	<!-- 							</div> -->
	<!-- 							<p class="d-flex mb-0 d-block"> -->
	<!-- 								<a href="#" class="btn btn-primary py-2 mr-1">Book now</a> <a -->
	<!-- 									href="car-single.html" class="btn btn-secondary py-2 ml-1">Details</a> -->
	<!-- 							</p> -->
	<!-- 						</div> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</section> -->


	<jsp:include page="../inc/bottom.jsp"></jsp:include>


	<!-- loader -->
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