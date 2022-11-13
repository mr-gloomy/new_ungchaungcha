<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    
	<!-- header -->
	<jsp:include page="inc/top.jsp"/>
	<!-- header -->
    <div class="hero-wrap ftco-degree-bg" style="background-image: url('images/bg_4.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
          <div class="col-lg-8 ftco-animate">
          	<div class="text w-100 text-center mb-md-5 pb-md-5">
	            <h1 class="mb-4">TAISO</h1>
	            <p style="font-size: 18px;">타이소타이소타이소타이소</p>
            </div>
          </div>
        </div>
      </div>
    </div>


     <section class="ftco-section ftco-no-pt bg-light">
    	<div class="container">
    		<div class="row no-gutters">
    			<div class="col-md-12 featured-top">
					<form action="./CarList.ca" method="post" class="request-form ftco-animate bg-primary">
					
		          		<h2>예약하기</h2>
				        <label for="" class="label">대여 / 반납일</label><br>
				        <input type="text" class="form-control" name="rez_total_date" id="book_range_date" placeholder="Date">
						<div class="d-flex">
							<div class="form-group mr-2">
								<label for="" class="label">대여시간</label>
								<input type="text" class="form-control" name="rez_time_pick" id="time_pick" placeholder="픽업시간을 선택하세요">
							</div>
							<div class="form-group mr-2">
								<label for="" class="label">반납시간</label>
								<input type="text" class="form-control" name="rez_time_off" id="time_off" placeholder="반납시간을 선택하세요">
							</div>
						</div>
			    		<div class="form-group">
							<label for="" class="label">이용지점</label>
						    <select name="addressRegion" id="addressRegion1"></select>
						    <select name="addressDo" id="addressDo1"></select>
						    <select name="rez_site" id="addressSiGunGu1"></select>
						</div>           
						<div class="form-group">
							<input type="submit" value="차량 검색" class="btn btn-secondary py-3 px-4">
						</div>
		    		</form>
	  				</div>
				</div>
				</div>
    </section>
    
    <!-- footer -->

    <jsp:include page="inc/bottom.jsp"/>
    
    <!-- footer -->
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />


<script type="text/javascript">
// daterangepicker
$(function() {
	
	  $('#book_range_date').daterangepicker({
	    opens: 'bottom'
	  }, function(start, end, label) {
	    console.log("A new date selection was made:" + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
	  });
	});
	
	
	
	
// rez_site_select
$(function(){
    areaSelectMaker("select[name=addressRegion]");
});

	var areaSelectMaker = function(target){
	    if(target == null || $(target).length == 0){
	        console.warn("Unkwon Area Tag");
	        return;
	    }

    var area = {
            "수도권" :{
                "서울특별시" : [ "강남지점", "강동구", "강북구"],
                "경기도" : [ "수원시 장안구", "수원시 권선구", "수원시 팔달구"],
                "인천광역시" : [ "계양구", "미추홀구", "남동구"]      
            },
            "강원권" :{
                "강원도" : [ "춘천시", "원주시", "강릉시"]      
            },
            "충청권" :{
                "충청북도" : [ "청주시 상당구", "청주시 서원구", "청주시 흥덕구"],
                "충청남도" : [ "천안시 동남구", "천안시 서북구", "공주시"],
                "대전광역시" : [ "대덕구", "동구", "서구"],
                "세종특별자치시" : [ "세종특별자치시" ]     
            },
            "전라권" :{
                "전라북도" : [ "전주시 완산구", "전주시 덕진구", "군산시"],
                "전라남도" : [ "목포시", "여수시", "순천시"],
                "광주광역시" : [ "광산구", "남구", "동구"]     
            },
            "경상권" : {
                "경상북도" : [ "포항시 남구", "포항시 북구", "경주시"],
                "경상남도" : [ "창원시 의창구", "창원시 성산구", "창원시 마산합포구"],
                "부산광역시" : [ "강서구", "금정구", "남구", "연제구"],
                "대구광역시" : [ "남구", "달서구", "동구"],
                "울산광역시" : [ "남구", "동구", "북구"]     
            },
            "제주권" : {
                "제주특별자치도" : [ "서귀포시", "제주시"]     
            }
        };

    for(i=0; i<$(target).length; i++){
        (function(z){
            var a1 = $(target).eq(z);
            var a2 = a1.next();
            var a3 = a2.next();

            //초기화
            init(a1, true);

            //권역 기본 생성
            var areaKeys1 = Object.keys(area);
            areaKeys1.forEach(function(Region){
                a1.append("<option value="+Region+">"+Region+"</option>");
            });

            //변경 이벤트
            $(a1).on("change", function(){
                init($(this), false);
                var Region = $(this).val();
                var keys = Object.keys(area[Region]);
                keys.forEach(function(Do){
                    a2.append("<option value="+Do+">"+Do+"</option>");    
                });
            });

            $(a2).on("change", function(){
                a3.empty().append("<option value=''>선택</option>");
                var Region = a1.val();
                var Do = $(this).val();
                var keys = Object.keys(area[Region][Do]);
                keys.forEach(function(SiGunGu){
                    a3.append("<option value="+area[Region][Do][SiGunGu]+">"+area[Region][Do][SiGunGu]+"</option>");    
                });
            });
        })(i);        

        function init(t, first){
            first ? t.empty().append("<option value=''>선택</option>") : "";
            t.next().empty().append("<option value=''>선택</option>");
            t.next().next().empty().append("<option value=''>선택</option>");
        }
    }
}
</script>  
    
</html>