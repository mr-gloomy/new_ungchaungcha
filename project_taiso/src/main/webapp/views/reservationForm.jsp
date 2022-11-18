<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<!-- ������°� -->
  <head>
  <link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
    <title>TAISO</title>
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
    
 <script type="text/javascript">

 	
 	// https://mojilee.tistory.com/11  ==> alertâ �ٹ̱� SweetAlertâ
 	
 	
	// ���� �󼼺��� 
	function Detail1(){
		Swal.fire({
			title : '�Ϲ����� ���� ��',
		    icon: 'info',
			html: '<p>Ÿ�̼Ҵ� ��� �߻� �� û���� ������<br/>�ּ�ȭ�ϰ��� �������� ������ ����帮�� �ֽ��ϴ�.</p><p><b>û����� :</b> 10,000 �� <br/> <b>�����ѵ� :</b> 200 ���� <br/> <b>�ڱ�δ�� :</b> 50 ���� <br/> <b>��������� :</b> 1�� �̻�</p>',
			confirmButtonText: 'Ȯ��'
		})
	}
 	
 	
	function Detail2(){
		Swal.fire({
			title : '�������� ���� ��',
		    icon: 'info',
			html: '<p>Ÿ�̼Ҵ� ��� �߻� �� û���� ������<br/>�ּ�ȭ�ϰ��� �������� ������ ����帮�� �ֽ��ϴ�.</p><p><b>û����� :</b> 20,000 �� <br/> <b>�����ѵ� :</b> 200 ���� <br/> <b>�ڱ�δ�� :</b> 0 �� <br/> <b>��������� :</b> 1�� �̻�</p>',
			confirmButtonText: 'Ȯ��'
		})
	}			
	
    // ���� ���   
    function insr1(){ // �Ϲ����� onclick �� 
       var insr = document.fr.insuranceCharge.value="10000";
       var numinsr = parseInt(insr);
       var rfee = parseInt(document.fr.rentalFee.value);
       document.fr.totalCharge.value=numinsr+rfee;
//        alert(total1);
		return false;
    }
    
    function insr2(){ // �������� onclick �� 
       var insr = document.fr.insuranceCharge.value="20000";
       var numinsr = parseInt(insr);
       var rfee = parseInt(document.fr.rentalFee.value);
       document.fr.totalCharge.value=numinsr+rfee;
       return false;
    }
    
    
    
    // ���� Ȯ�� â
    function checkRez(seq){
		Swal.fire({
		  title: '���� Ȯ�� â',
		  text: "�����Ͻðڽ��ϱ�?",
		  icon: 'success',
		  //html: ${carDTO.car_category}''
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: 'grey',
		  confirmButtonText: '����',
		  cancelButtonText: '���'
		}).then((result) => {
		  if (result.value) {
	          //"���" ��ư�� ������ �� �۾��� ������ �̰��� �־��ָ� �ȴ�. 
		fr.submit();
		  }
		})
	}
    
    
    
    
    
    
 </script>
 
 
  </head>

<!-- ------------------------------------------------------------------------------------------------------- -->

  <body>
  
 <!-- jsp:include -->
 <jsp:include page="../inc/top.jsp"/>
 <!-- jsp:include -->
    
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_3.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>RESERVATION <i class="ion-ios-arrow-forward"></i></span></p>
            <h1 class="mb-3 bread">�����ϱ�</h1>
          </div>
        </div>
      </div>
    </section>
<!-- ������°� -->




 <!-- Left Side �и�(section/div) -->
    <section class="ftco-section contact-section">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
        
        
        
        
        
<!-- contact �ۼ�Form -->
   <div class="col-md-8 block-9 mb-md-5">
       	<form action="./ReservationProAction.rez" class="bg-light p-5 contact-form" method="post" id="rez" 
   				 name="fr" onsubmit="return checkRez();">
<!--        	<form action="./ReservationProAction.rez" class="bg-light p-5 contact-form" method="post" id="rez"  -->
<!--    				 name="fr"  onsubmit="return checkRez();"> -->
<!--    				 
   				 
 <!-- Left Side �и�(section/div)-->
        	<div class="col-md-4">
        		<div class="row mb-5">
		          <div class="col-md-12">
						<!-- <div class="border w-100 p-4 rounded mb-2 d-flex"> -->
			     
			            <p><span>[��������]</span> 
			            	<label>�뿩�Ͻ� : <input type="text" name="rez_rentalDate" value="${sessionScope.rez_pick_date }" readonly="readonly"></label> <br> <!-- rezDTO -->
			            	<label>�ݳ��Ͻ� : <input type="text" name="rez_returnDate" value="${sessionScope.rez_off_date }" readonly="readonly"> <br></label>
			            	<label>�뿩�ð� : <input type="text" name="rez_pick_time" value="${sessionScope.rez_pick_time }" readonly="readonly"></label> <br> <!-- rezDTO -->
			            	<label>�ݳ��ð� : <input type="text" name="rez_off_time" value="${sessionScope.rez_off_time }" readonly="readonly"> <br></label>
			            	<label>�뿩/�ݳ���� : <input type="text" name="rez_site" value="${sessionScope.rez_site }" readonly="readonly"> </label><br>	            
			            </p>
						<!-- </div> -->
<hr>
		          </div>
		          <div class="col-md-12">
<!-- 		          	<div class="border w-100 p-4 rounded mb-2 d-flex"> -->
			            <p><span>[������������]</span> 
						<!-- c:set ���̺귯�� �̿��ؼ� dto �޾ƿ��� �͵� �����غ��� �ٵ� �ϴ� ��ư�̳� ��ũ �ּ��ٿ��� �޾ƿ��� �ɷ�.. -->				
			            <input type="hidden" name="car_code" value="${carDTO.car_code}"><br>
			            <label>���� ī�װ� : <input type="text" name="car_category" value="${carDTO.car_category}" readonly="readonly"></label> <br>
						<label>���� �귣�� : <input type="text" name="car_brand" value="${carDTO.car_brand}" readonly="readonly"></label> <br><!-- �ּ��ٿ����޾ƿ��� -->
			            <label>���� �̸� : <input type="text" name="car_name" value="${carDTO.car_name}" readonly="readonly"></label> <br>
			            <label>���� �ɼ� : <input type="text" name="car_op" value="${carDTO.car_op}" readonly="readonly"></label> <br>
			            <label>���� ���� : <input type="text" name="car_year" value="${carDTO.car_year}" readonly="readonly"></label> <br>
			            <label>���� ���� : <input type="text" name="car_fuel" value="${carDTO.car_fuel}" readonly="readonly"></label>

			            </p>
			          </div>
<!-- 		          </div> -->
		          
		        </div>
          </div>
<!-- Left Side -->  				 
              <hr>
              <br>
              <br>

          <div class="form-group">
         	  <h3>�����������Է� ${mDTO}</h3>
	           	 	<!-- ReservationAction���� �޾ƿ��� ���� dto �ҷ������  -->
	             �̸� : <input type="text" name="name" class="form-control" value="${mDTO.mem_name }" readonly="readonly">
          </div>  
          
          <div class="form-group">           
                ��ȭ��ȣ : <input type="text" name="phone" class="form-control" value="${mDTO.mem_phone }" readonly="readonly">
          </div>  
             
		  <div class="form-group">           
                ������� : <input type="text" name="birth" class="form-control" value="${mDTO.mem_birthday }" readonly="readonly">
 		  </div>  
 		  
 		  <div class="form-group">      
                �̸��� : <input type="email" name="email" class="form-control" value="${mDTO.mem_email }" readonly="readonly">
          </div>
              
			  <br>
              <hr>
              <br>
              
          <div class="form-group">
              <h3>���������Է�</h3>	 
                ����߱����� : <input type="text" class="form-control" value="aaa" placeholder="����߱����ڸ� ��Ȯ�ϰ� �Է����ּ���." required="required">
          </div>
          
          <div class="form-group">
               	�������� : 
               	  <select class="form-control" name="license_num" required="required">
               	  		<option selected>���������� �����ϼ���</option>
               	  	<optgroup label="1��">
               	  	    <option selected="selected">1������</option>
	               		<option>1������</option>
	               		<option>1������</option>
	               	</optgroup>
	               	<optgroup label="2��">	
	               		<option>2������</option>
	               		<option>2������</option>
	                </optgroup>
	                <optgroup label="Ư��">	
	                	<option>��������</option>
	                	<option>��������</option>
	                	<option>����</option>
	                </optgroup>
	                <optgroup label="��Ÿ">	
	                <option>������</option>
	                </optgroup>
               	  </select>	
          </div>
          
          <div class="form-group">
           		��������ȣ : <input type="text" name="license_issueDate" class="form-control" value="aa" maxlength='12' placeholder="��������ȣ�� ��Ȯ�ϰ� �Է����ּ���." required="required">
          </div>
          
          <div class="form-group">
          		 ���㱸�� : <input type="text" name="license_type" class="form-control" value="aa" placeholder="���㱸��" required="required">
          </div>
           
           <br>
           <hr>
           <br>
           
		  <div class="form-group">
			<h3>�ڵ�������</h3>	
				<label><input type="radio" name="car_insurance" onclick="insr1()" required="required"> �Ϲ�����
				<!-- <input type="button" name="car_insurance" value="Detail1" onclick="Detail1();"> -->
					<a href="javascript:Detail1();">�󼼺���</a></label><br>
				<label><input type="radio" name="car_insurance" onclick="insr2()" required="required"> ��������	
				<a href="javascript:Detail2();">�󼼺���</a></label><br>
		  </div>
		  
		  <div class="form-group">
			<h3>��������</h3>		
				<label><input type="radio" name="pay_method" value="īī������" required="required"> īī������  </label>
				<label><input type="radio" name="pay_method" value="�佺����" required="required" checked="checked"> �佺����  </label>
				<label><input type="radio" name="pay_method" value="���̹�����" required="required"> ���̹�����  </label>
				<label><input type="radio" name="pay_method" value="�Ϲݰ���" required="required"> �Ϲݰ���</label>
		  </div>
		  
		  <div class="form-group">	
			<h3>��������</h3>		
				<!-- �ĺ� ��ȣ ȣ�� ��ǰ���� ���� �ּ��ٿ��� �޾ƿð� --> <input type="hidden" name="car_code" value="${param.car_code}">	 
				<%-- <label>�뿩��� : <input type="text" name="rentalFee" value="${carDTO.price}" readonly="readonly">��</label><br> --%>
				<label>�뿩��� : <input type="text" name="rentalFee" value="${carDTO.car_price }" readonly="readonly">��</label><br>
		<!-- if�� ����ؼ� �Ϲ������� ���� 1���� / ���������϶��� 2���� -->
				<label>������ : <input type="text" name="insuranceCharge" value="" readonly="readonly">��</label><br>
				<label>�� ���� �ݾ� : <input type="text" name="totalCharge" value="" readonly="readonly"> ��</label>
		  </div>					<!-- totalCharge�� ���� -->

	
		  <div class="form-group">	  
			<h3>�������</h3>	
				<textarea name="" id="" cols="30" rows="7" class="form-control" readonly="readonly">
������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����
������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����
������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����
������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����
������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����
������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����������� �ܾ�� ����
				</textarea><br>
				<label> <input type="checkbox" name="agreement" required="required"> �� ����� ��ü �����մϴ�.</label>
		  </div>	
	<br>
	<br>	
          <div class="form-group" id="buttons">
		<%--  <input type="button" value="${totalcharge} �����ϱ�" onclick="checkRez();"> --%>

             	<input type="submit" value="${totalCharge} �����ϱ�" class="btn btn-primary py-3 px-5">           
             	<input type="reset" value="�ʱ�ȭ" class="btn btn-primary py-3 px-5">           
            	
          </div>
           
        </form>  
      </div>
    </div>	
<!-- contact �ۼ�Form -->


<!-- ���� -->
        <div class="row justify-content-center">
        	<div class="col-md-12">
        		<div id="map" class="bg-white"></div>
        	</div>
        </div>
      </div>
<!-- ���� -->
    </section>
	
	
<!-- Ǫ�͵��°� -->
 	<jsp:include page="../inc/bottom.jsp"/>
<!-- Ǫ�͵��°� -->    
  

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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="./js/google-map.js"></script>
  <script src="./js/main.js"></script>
    
  </body>
</html>