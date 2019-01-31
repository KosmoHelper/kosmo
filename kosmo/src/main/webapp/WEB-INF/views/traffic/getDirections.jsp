<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Directions</title>
<link rel="stylesheet" href="resources/style.css">
<link rel="stylesheet" href="resources/css/SDHcss/sdhStyle.css">
</head>
<body>
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="preloader-circle"></div>
		<div class="preloader-img">
			<img src="resources/img/core-img/leaf.png" alt="">
		</div>
	</div>

	<%@ include file="../setting/header01.jsp"%>


	<!-- ##### Breadcrumb Area Start ##### -->
	<div class="breadcrumb-area">
		<!-- Top Breadcrumb Area -->
		<div
			class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center"
			style="background-image: url(resources/img/ehddnr2.jpg);">
			<h2>Get  Directions</h2>
		</div>
	</div>
	<!-- ##### Breadcrumb Area End ##### -->
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<div class="container">
         <div class="row align-items-center justify-content-between">
            <div class="col-12 col-lg-5">
               <!-- Section Heading -->
               <div class="section-heading">
                  <h2>GET YOUR DIRECTIONS</h2>
                  <p>With Google Map</p>
               </div>
               <!-- Contact Form Area -->
               <div class="contact-form-area mb-100">
                  <form action="#" method="post">
                     <div class="row">
                        <div class="col-12 col-sm-6">
                           <div class="form-group">
                              Push <img src="resources/img/traffic/direc.PNG"> button<br>to get your directions.
                           </div>
                        </div>
                     </div>
                  </form>
               </div>
            </div>

            <div class="col-12 col-lg-6">
               <!-- Google Maps -->
               <div class="map-area mb-100">
                  <iframe   src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22236.40558254599!2d-118.25292394686001!3d34.057682914027104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2z4Kay4Ka4IOCmj-CmnuCnjeCmnOCnh-CmsuCnh-CmuCwg4KaV4KeN4Kav4Ka-4Kay4Ka_4Kar4KeL4Kaw4KeN4Kao4Ka_4Kav4Ka84Ka-LCDgpq7gpr7gprDgp43gppXgpr_gpqgg4Kav4KeB4KaV4KeN4Kak4Kaw4Ka-4Ka34KeN4Kaf4KeN4Kaw!5e0!3m2!1sbn!2sbd!4v1532328708137"   allowfullscreen></iframe>
               </div>
            </div>
         </div>
      </div>

	<%@ include file="../setting/footer01.jsp"%>
</body>
</html>