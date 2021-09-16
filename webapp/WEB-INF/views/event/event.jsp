<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>공간, 이벤트</title>
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">
<link rel="stylesheet" media="screen"
	href="https://static.ohou.se/assets/v3/layout/application_react-790a108e6a9b26136290c8bea25696fec3e4701284512f9eed313b7dbb352615.css">
<link rel="stylesheet" href="css/event/event.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" type="text/css"
	href="https://static.ohou.se/dist/css/templates-Content-Competition-Feed-bb9421c2.chunk.css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<!-- 진행중과 날짜 css -->
<link rel="stylesheet" type="text/css"
	href="https://static.ohou.se/dist/css/containers-CommentFeed-CommentFeedProvider-a89ed764.chunk.css">

<style type="text/css">
.main_wrap {
	margin-top: 148px;
}

header {
	position: fixed;
	width: 100%;
	margin-top: -148px;
	z-index: 99999;
	background-color: rgb(251, 251, 251);
	border-bottom: 1px solid #dbdbdb;
}
.css_input_userInfo {
	text-align: left;
	width: 80%;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 20px 20px 20px 20px;
	box-sizing: border-box;
	font-size: 15px;
	transition: border-color .1s, background-color .1s;
	resize: none;
	-webkit-appearance: none;
}

#searchButton {
	color: #757575;
}

#search {
	text-align: left;
	width: 80%;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 20px 20px 20px 20px;
	box-sizing: border-box;
	font-size: 15px;
	transition: border-color .1s, background-color .1s;
	resize: none;
	-webkit-appearance: none;
}

.layout-navigation-bar-login__item {
	position: relative;
	display: inline-block;
	padding: 2px;
	margin: 2%;
	color: #757575;
	font-size: 12px;
	font-weight: 700;
	line-height: 20px;
	text-decoration: none;
	color: #757575;
}

.mainLogo {
	font-family: 'Gugi', cursive;
	color: #111;
	font-size: 55px;
	text-decoration: none;
}

a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	/* color: skyblue; */
	color: #00C892;
	text-decoration: none;
}

footer {
	width: auto;
	height: auto;
	background: rgb(226, 226, 226);
}
</style>
</head>
<body>
	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="hs-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<div class="logo">
							<a href="index"><span class="mainLogo">공간</span></a>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="ht-widget">
							<c:if test="${session_flag != 'success' }">
								<!-- if문 session값을 확인하여 메뉴를 달리해준다. -->
								<a href="login" class="layout-navigation-bar-login__item">로그인</a>
								<span>&nbsp;|&nbsp;</span>
								<!-- 로그인 -->
								<!-- 로그인시 로그아웃 -->
								<a href="user_Join" class="layout-navigation-bar-login__item">회원가입</a>
								<!-- 회원가입 -->
								<!-- 로그인시 마이페이지 -->
								<!-- if문 session값을 확인하여 메뉴를 달리해준다. -->
							</c:if>
							<c:if test="${session_flag == 'success' }">
								<!-- if문 session값을 확인하여 메뉴를 달리해준다. -->
								<a href="loginOut" class="layout-navigation-bar-login__item">로그아웃</a>
								<span>&nbsp;|&nbsp;</span>
								<!-- 로그인 -->
								<!-- 로그인시 로그아웃 -->
								<a href="myPage?nickname=${session_nickName }"
									class="layout-navigation-bar-login__item">마이페이지</a>
								<!-- 회원가입 -->
								<!-- 로그인시 마이페이지 -->
								<!-- if문 session값을 확인하여 메뉴를 달리해준다. -->
							</c:if>
						</div>
					</div>
				</div>
				<div class="canvas-open">
					<span class="icon_menu"></span>
				</div>
			</div>
		</div>
		<div class="hs-nav">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<nav class="nav-menu">
							<ul>
								<li class="active"><a href="index">홈</a></li>
								<!-- 홈 -->
								<li><a href="store1">스토어</a></li>
								<!-- 스토어 -->
								<li><a href="companyMain">시공업체</a></li>
								<!-- 시공업체 -->
								<!-- <li><a href="interiorInquiries">시공문의</a></li> -->
								<!-- 시공업체상세페이지 -->
								<li><a href="communityMain">커뮤니티</a></li>
								<!-- 커뮤니티 -->
								<li><a href="event">이벤트</a></li>
								<!-- 이벤트 -->
								<c:if test="${session_right == 'Manager' }">
									<li><a href="adminPage">관리자페이지</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
					<div class="col-lg-3">
						<div class="hn-social">
							<!-- 검색기능 -->
							<form action="">
								<input class="css_input_userInfo" type="text" id="search"
									name="search"
									placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;search">
								<!-- 검색 -->
								<input class="fas fa-search fa-lg" id="searchButton"
									type="button" id="" onclick="" value="검색">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header End -->
		<div class="main_wrap">
	<div class="layout">
		<div class="competition-feed container">
			<ul class="competition-feed__list row">
				<!-- 비스포크 -->
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
					<a class="competition-item" href="eventbespoke">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event1.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/08/23~21/09/12</div>
							<div
								class="competition-item__footer__state competition-item__footer__state--doing">진행중</div>
						</div>
				</a>
				</li>
				<!-- 비스포크 -->
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
					<a class="competition-item"
					href="/competitions/568?affect_type=EventIndex&amp;affect_id=0">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event2.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/08/23~21/09/05</div>
							<div
								class="competition-item__footer__state competition-item__footer__state--doing">진행중</div>
						</div>
				</a>
				</li>
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0"><a
					class="competition-item"
					href="/competitions/567?affect_type=EventIndex&amp;affect_id=0">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event3.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/08/16~21/09/05</div>
							<div
								class="competition-item__footer__state competition-item__footer__state--doing">진행중</div>
						</div>
				</a></li>
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
					<a class="competition-item"
					href="/competitions/564?affect_type=EventIndex&amp;affect_id=0">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event4.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/08/16~21/08/29</div>
							<div
								class="competition-item__footer__state competition-item__footer__state--doing">진행중</div>
						</div>
				</a>
				</li>
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
					<a class="competition-item"
					href="/competitions/563?affect_type=EventIndex&amp;affect_id=0">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event5.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/08/12~21/08/31</div>
							<div
								class="competition-item__footer__state competition-item__footer__state--doing">진행중</div>
						</div>
				</a>
				</li>
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
					<a class="competition-item"
					href="/competitions/561?affect_type=EventIndex&amp;affect_id=0">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event6.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/08/01~21/08/31</div>
							<div
								class="competition-item__footer__state competition-item__footer__state--doing">진행중</div>
						</div>
				</a>
				</li>
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
					<a class="competition-item"
					href="/competitions/560?affect_type=EventIndex&amp;affect_id=0">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event7.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/08/02~21/08/29</div>
							<div
								class="competition-item__footer__state competition-item__footer__state--doing">진행중</div>
						</div>
				</a>
				</li>
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
					<a class="competition-item"
					href="/competitions/556?affect_type=EventIndex&amp;affect_id=0">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event8.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/08/01~21/08/31</div>
							<div
								class="competition-item__footer__state competition-item__footer__state--doing">진행중</div>
						</div>
				</a>
				</li>
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
					<a class="competition-item"
					href="/competitions/552?affect_type=EventIndex&amp;affect_id=0">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event9.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/07/01~21/12/31</div>
							<div
								class="competition-item__footer__state competition-item__footer__state--doing">진행중</div>
						</div>
				</a>
				</li>
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
					<a class="competition-item"
					href="/competitions/536?affect_type=EventIndex&amp;affect_id=0">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event10.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/08/02~21/08/29</div>
							<div
								class="competition-item__footer__state competition-item__footer__state--doing">진행중</div>
						</div>
				</a>
				</li>
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
					<a class="competition-item"
					href="/competitions/360?affect_type=EventIndex&amp;affect_id=0">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event11.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/08/01~21/08/31</div>
							<div
								class="competition-item__footer__state competition-item__footer__state--doing">진행중</div>
						</div>
				</a>
				</li>
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
					<a class="competition-item"
					href="/competitions/562?affect_type=EventIndex&amp;affect_id=0">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event12.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/08/09~21/08/22</div>
							<div class="competition-item__footer__state">종료</div>
						</div>
				</a>
				</li>
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
					<a class="competition-item"
					href="/competitions/559?affect_type=EventIndex&amp;affect_id=0">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event13.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/08/02~21/08/15</div>
							<div class="competition-item__footer__state">종료</div>
						</div>
				</a>
				</li>
				<li class="col-12 col-md-10 offset-md-1 col-lg-6 offset-lg-0">
					<a class="competition-item"
					href="/competitions/555?affect_type=EventIndex&amp;affect_id=0">
						<div class="competition-item__image-wrap">
							<img class="competition-item__image" src="img/event/event14.png">
						</div>
						<div class="competition-item__footer">
							<div class="competition-item__footer__date">21/07/28~21/08/17</div>
							<div class="competition-item__footer__state">종료</div>
						</div>
				</a>
				</li>
			</ul>
		</div>
	</div>
	<!-- top -->
	<a
		style="display: scroll; position: fixed; bottom: 10px; right: 20px; cursor: pointer;"
		href="#" title="top"> <i class="fas fa-arrow-circle-up"
		style="width: 2em; height: 2em;"></i></a>
	<!-- top -->
	<!-- Footer Section Begin -->
	<footer>
		<pre
			style="color: rgb(107, 107, 107); font-size: 0.7em; text-align: left;">
		
			<span style="font-weight: 700; font-size: 6em;">1670-0876</span><a
				href=""><i class="fab fa-apple"
				style="margin-left: 35%; width: 4em; height: 4em;"></i></a><a href=""><i
				class="fab fa-google-play"
				style="margin-left: 2%; width: 4em; height: 4em;"></i></a><a href=""><i
				class="fab fa-facebook"
				style="margin-left: 2%; width: 4em; height: 4em;"></i></a><a href=""><i
				class="fab fa-instagram"
				style="margin-left: 2%; width: 4em; height: 4em;"></i></a>
			<span style="font-size: 2em;">평일 09:00 ~ 18:00 (주말 & 공휴일 제외)</span>
			
			<span>브랜드 스토리회사소개채용정보이용약관개인정보처리방침공지사항고객센터고객의 소리전문가 등록사업자 구매회원제휴/광고 문의입점신청 문의</span>
			
			<span>상호명(주)버킷플레이스이메일(고객문의) space@bucketplace.net (제휴문의) contact@bucketplace.net</span>
			<span>대표이사:홍길동 사업자등록번호:119-86-91245 통신판매업신고번호:제2018-서울서초-0580호 주소:서울 서초구 서초대로74길 4 삼성생명서초타워 25, 27층</span>
			<span>공간은 개별 판매자가 상품을 판매하는 오픈마켓이며 (주)버킷플레이스는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 일체 책임을 지지 않습니다.</span>
			
			<span>Copyright 2021. bucketplace, Co., Ltd. All rights reserved [ developer : TeamSpace ]</span>
			
		</pre>
	</footer>
	<!-- Footer Section End -->
	</div>
</body>
</html>