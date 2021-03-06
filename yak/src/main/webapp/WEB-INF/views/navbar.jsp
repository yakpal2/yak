<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<title>약팔이</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="BHost template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="resources/styles/responsive.css">
</head>
<body>
<div class="super_container">
	
	<!-- Header -->

	<header class="header trans_400">
		<div class="header_content d-flex flex-row align-items-center justify-content-start trans_400">
			<div class="logo"><a href="/yak"><span>약</span>팔이</a></div>
			<div class="container">
				<div class="row">
					<div class="col-lg-10 offset-lg-2">
					
						
						<nav class="main_nav">
							<ul class="d-flex flex-row align-items-center justify-content-start">
								<li class="active"><a href="/yak">Home</a></li>
								
								<li><a href="/yak/search">Search</a></li>
								<li><a href="/yak/about">홈페이지  소개</a></li>
								<li class="nav-item dropdown">
              					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">문의</a>
              					<div class="dropdown-menu">
                					<a class="dropdown-item" style="color:black" href="/yak/help">1:1 문의</a>
                					<a class="dropdown-item" style="color:black" href="/yak/contact">광고 문의</a>
             					 </div>
          						  </li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<div class="header_right d-flex flex-row align-items-center justify-content-start">

				<!-- Header Links -->
				<div class="header_links">
					<ul class="d-flex flex-row align-items-center justify-content-start">
						<c:if test="${not empty authInfo.id}">
						<li style="color:white">${authInfo.name}님 환영합니다</li>
						<li><a href="/yak/mypage">Mypage</a></li>
						</c:if>
						<c:if test="${ empty authInfo.id}">
						<li><a href="/yak/join_1">회원가입</a></li>
						</c:if>
					</ul>
				</div>

				<!-- Phone -->
				<div class="phone d-flex flex-row align-items-center justify-content-start">
					<i class="fa fa-power-off" aria-hidden="true"></i>
					<div>
					<c:if test="${empty authInfo.id}">
					<a href="/yak/login">Login</a>
					</c:if>
					<c:if test="${not empty authInfo.id}">
					<a href="/yak/logout">Logout</a>
					</c:if>
					</div>
				</div>

				<!-- Hamburger -->
				<div class="hamburger"><i class="fa fa-bars" aria-hidden="true"></i></div>
			</div>	
		</div>
	</header>

	<!-- Menu -->

	<div class="menu trans_500">
		<div class="menu_content d-flex flex-column align-items-center justify-content-center">
			<div class="menu_nav trans_500">
				<ul class="text-center">
					<li><a href="/yak/search">Search</a></li>
								<li><a href="/yak/about">홈페이지  소개</a></li>
								<li class="nav-item dropdown">
              					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">문의</a>
              					<div class="dropdown-menu">
                					<a class="dropdown-item" style="color:black" href="/yak/help">1:1 문의</a>
                					<a class="dropdown-item" style="color:black" href="/yak/contact">광고 문의</a>
             					 </div>
          						  </li>
								
				</ul>
			</div>
			<div class="phone menu_phone d-flex flex-row align-items-center justify-content-start">
				<i class="fa fa-power-off" aria-hidden="true"></i>
				<div>Login</div>
			</div>
		</div>
	</div>	
</div>


<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/styles/bootstrap-4.1.2/popper.js"></script>
<script src="resources/styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="resources/plugins/greensock/TweenMax.min.js"></script>
<script src="resources/plugins/greensock/TimelineMax.min.js"></script>
<script src="resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="resources/plugins/greensock/animation.gsap.min.js"></script>
<script src="resources/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="resources/plugins/easing/easing.js"></script>
<script src="resources/plugins/progressbar/progressbar.min.js"></script>
<script src="resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="resources/js/custom.js"></script>
</body>
</html>