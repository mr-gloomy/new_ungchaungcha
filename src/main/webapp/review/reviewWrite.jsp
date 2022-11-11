<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- 헤더들어가는곳 -->
  <head>
    <title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
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
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
	
	<script type="text/javascript">
	
	function insertBoard(seq){
		Swal.fire({
		  title: '글을 등록하시겠습니까?',
		  // text: "삭제하시면 다시 복구시킬 수 없습니다.",
		  icon: 'info',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: 'grey',
		  confirmButtonText: '등록',
		  cancelButtonText: '취소'
		}).then((result) => {
		  if (result.value) {
	          //"등록" 버튼을 눌렀을 때 작업할 내용을 이곳에 넣어주면 된다. 
	          fr.submit();
		  }
		})
	}
	

	</script>
</head>
  <body>
  	<!-- 헤더 -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
  	<!-- 헤더 끝-->

<!-- 	<h1>예약하기</h1> -->

<!-- Left Side -->
    <section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
        	<div class="col-md-4">
        		<div class="row mb-5">
		          <div class="col-md-12">
<!-- 		          	<div class="border w-100 p-4 rounded mb-2 d-flex"> -->
<!-- 			          	<div class="icon mr-3"> -->
<!-- 			          		<span class="icon-map-o"></span> -->
<!-- 			          	</div> -->
<!--							 <p><span>[예약정보]</span> 198 West 21th Street, Suite 721 New York NY 10016</p> -->
<!-- 			          </div> -->
		          </div>
<!-- 		          <div class="col-md-12"> -->
<!-- 		          	<div class="border w-100 p-4 rounded mb-2 d-flex"> -->
<!-- 			          	<div class="icon mr-3"> -->
<!-- 			          		<span class="icon-mobile-phone"></span> -->
<!-- 			          	</div> -->
<!-- 			            <p><span>[선택차량정보]</span> <a href="tel://1234567920">글자늘리면 저절로 칸 수 늘어남글자늘리면 저절로 칸 수 늘어남 글자늘리면 저절로 칸 수 늘어남 글자늘리면 저절로 칸 수 늘어남글자늘리면 저절로 칸 수 늘어남 글자늘리면 저절로 칸 수 늘어남 글자늘리면 저절로 칸 수 늘어남글자늘리면 저절로 칸 수 늘어남 글자늘리면 저절로 칸 수 늘어남 글자늘리면 저절로 칸 수 늘어남글자늘리면 저절로 칸 수 늘어남 글자늘리면 저절로 칸 수 늘어남 글자늘리면 저절로 칸 수 늘어남글자늘리면 저절로 칸 수 늘어남 글자늘리면 저절로 칸 수 늘어남 </a></p> -->
<!-- 			          </div> -->
<!-- 		          </div> -->
<!-- 		          <div class="col-md-12"> -->
<!-- 		          	<div class="border w-100 p-4 rounded mb-2 d-flex"> -->
<!-- 			          	<div class="icon mr-3"> -->
<!-- 			          		<span class="icon-envelope-o"></span> -->
<!-- 			          	</div> -->
<!-- 			            <p><span>Email:</span> <a href="mailto:info@yoursite.com">이것도 저절로 늘어남!!!</a></p> -->
<!-- 			          </div> -->
<!-- 		          </div> -->
		        </div>
          </div>
<!-- Left Side -->

<!-- contact 작성Form -->
	
		<!-- <h1>예약하기</h1> 여기쓰면 화면 어그러짐-->
          <div class="col-md-8 block-9 mb-md-5">
            <form action="./ReviewWriteAction.re" name = "fr" class="bg-light p-5 contact-form" method="post" enctype="multipart/form-data">
           <div class="form-group">
           	 <h3><b>리뷰 등록</b></h3>	 
<%--                 제목 : <input type="text" name="name" class="form-control" value="${dto.name }"><br> --%>
                           
<%--                 이용 후기 : <input type="text" name="phone" class="form-control" value="${dto.tel }"><br> --%>
                        
<%--                 평점 : <input type="text" name="birth" class="form-control" value="${dto.birth }"><br> --%>

<%--                 첨부파일 : <input type="email" name="email" class="form-control" value="${dto.email }"><br> --%>
<!--               </div> -->

<!--               <hr> -->
              
              
              <div class="form-group">
                <input type="text" class="form-control" placeholder="제목" name="rev_subject">
              </div>
              <div class="form-group">
                <textarea name="rev_content" id="" cols="30" rows="15" class="form-control" placeholder="이용후기를 남겨주세요" ></textarea>
              </div>
<!--               <div class="form-group"> -->
<!--                 <input type="text" class="form-control" placeholder="평점" name="rev_star"> -->
<!--               </div> -->
				<div class="star-rating space-x-4 mx-auto">
					<input type="radio" id="5-stars" name="rev_star" value="5" v-model="ratings"/>
					<label for="5-stars" class="star pr-4">★</label>
					<input type="radio" id="4-stars" name="rev_star" value="4" v-model="ratings"/>
					<label for="4-stars" class="star">★</label>
					<input type="radio" id="3-stars" name="rev_star" value="3" v-model="ratings"/>
					<label for="3-stars" class="star">★</label>
					<input type="radio" id="2-stars" name="rev_star" value="2" v-model="ratings"/>
					<label for="2-stars" class="star">★</label>
					<input type="radio" id="1-star" name="rev_star" value="1" v-model="ratings" />
					<label for="1-star" class="star">★</label>
				</div>
				<br>
<!--               <div class="form-group"> -->
<!--                 <input type="text" class="form-control" placeholder="첨부파일" name="rev_image"> -->
<!--               </div> -->
              <label class="input-file-button" for="input-file">
				 사진 업로드
			  </label>
			  
			  <div class="form-group">
                <input type="button" value="등록" class="btn btn-primary py-2 px-5"  onclick="insertBoard()">
              </div>
              
			  <div style="display:none">
				<input type="file" id="input-file" name="rev_image"/> <br><br>
              </div>

              
              
           
            </form>  
          </div>
        </div>
	
<!-- contact 작성Form -->
    </section>
	
	
<!-- 푸터 시작 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터 끝 -->

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    
  </body>
</html>