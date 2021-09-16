<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Aler Template">
<meta name="keywords" content="Aler, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap"
	rel="stylesheet">

<title>공간, 현명한 인테리어</title>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/store.css" type="text/css">
<link rel="stylesheet" href="css/store2.css" type="text/css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style type="text/css">
#mainHeader {
	position: fixed;
	width: 100%;
	margin-top: -148px;
	z-index: 99999;
	background-color: rgb(251, 251, 251);
	border-bottom: 1px solid #dbdbdb;
}
.main_wrap {
	margin-top: 148px;
}

.content-detail {
	text-align: center;
	margin: 0;
	padding: 40px 0;
	border-bottom: 3px solid #ededed;
}

.content-detail-header-nickname:hover {
	color: orange;
}

.content-detail-header__author-date:hover {
	color: blue
}

.content-detail-header__title {
	font-size: 35px;
	color: white;
	font-weight: 700;
}

.content-detail-text {
	margin: 10px 0;
	color: #424242;
	font-size: 15px;
	line-height: 28px;
	min-height: 28px;
}

.comment1 {
	text-align: center;
}

.property-item .pi-pic {
	margin: auto;
}

.event-menu {
	text-align: center;
	width: auto;
}

#event-menu-img {
	border-radius: 20px/20px;
	max-width: 100%;
	height: auto;
}

.pi-pic set-bg>img {
	border-radius: 20px/20px;
}

#mainimage {
	position: relative;
	text-align: center;
	margin-left: 10%;
}

.mainimage-cover {
	position: absolute;
	height: auto;
	width: auto;
	background-color: red;
	z-index: 1;
}

#mainimage .mainimage-content {
	position: absolute;
	font-size: 5rem;
	color: blue;
	z-index: 2;
	bottom: 3%;
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
	<!-- Offcanvas Menu Wrapper Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="offcanvas-menu-wrapper">
		<div class="canvas-close">
			<span class="icon_close"></span>
		</div>
		<div class="logo">
			<a href="index"> <img src="img/logo.png" alt="logo">
			</a>
		</div>
		<div id="mobile-menu-wrap"></div>
		<div class="om-widget">
			<a href="#" class="hw-btn">Submit property</a>
			<!-- 창이 작아졌을때 메뉴버튼 내부버튼 -->
		</div>
		<div class="om-social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i
				class="fa fa-youtube-play"></i></a> <a href="#"><i
				class="fa fa-instagram"></i></a> <a href="#"><i
				class="fa fa-pinterest-p"></i></a>
		</div>
	</div>
	<!-- Offcanvas Menu Wrapper End -->

	<!-- Header Section Begin -->
	<header id="mainHeader" class="header-section">
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
		<section class="feature-property-section spad">
			<div class="fp-slider owl-carousel">
				<div id="mainimage" class="fp-item set-bg"
					data-setbg="images/community/community.jpg">
					<div class="mainimage-content">
						<h1 class="content-detail-header__title">모든 걸 갖춘,맥시멀리스트의 잡지
							같은 10평대 신혼집</h1>
					</div>
					<div class="mainimage-cover"></div>
				</div>
			</div>
		</section>
		<div class="content-detail">
			<header class="content-detail-header">
				<div class="content-detail-header__top">
					<p class="content-detail-header__category">온라인 집들이</p>
				</div>
				<!-- <h1 class="content-detail-header__title">모든 걸 갖춘,맥시멀리스트의 잡지 같은 10평대 신혼집</h1> -->
				<div class="content-detail-header__bottom">

					<div class="content-detail-header__author-image">
						<img class="image" alt="" src="">
					</div>
					</a> <a href="">
						<div class="content-detail-header-nickname">닉네임</div>
					</a> <a href="">
						<div class="content-detail-header__author-date">2021년 09월
							05일</div>
				</div>
			</header>
			<div class="content-detail-main1">
				<img alt="" src="images/community/cbody1_1.jpg">
			</div>
			<p class="content-detail-text">안녕하세요.저희는 함께 사업을 하고 있는 동갑내기 11년 차
				부부입니다.1년 전만 해도 논밭 뷰가 펼쳐진 시골에 살다 일 때문에 서울에 올라오게 되었고 임시로 1년 정도만 머물 곳이
				필요해서&nbsp;얻게 된 곳이 바로 지금의 오피스텔이었어요.&nbsp;본가와 왔다 갔다 하면서 정말 잠시만 머물
				곳이었기에 소소하게 꾸며서 살려고 했는데 하는 일이 커지면서&nbsp;예상보다 더 오래 머물게 되었고 앞으로도 몇 년은
				이곳에 더 있게 될 것 같아 저희 부부의 라이프 스타일에 맞춰 꾸미기 시작했어요.</p>
			<p class="content-detail-text">
				이 작은 오피스텔 안에서 외출하지 않아도&nbsp;집에서 저희가 원하는 여가 생활을 즐길 수 있는 하우스에 포커스를 맞춰
				셀프 인테리어를 해봤어요.<br>
			</p>
			<div class="content-detail-main1">
				<img alt="" src="images/community/cbody1_2.jpg">
			</div>
			<h2 class="bpd-view-text project-detail-h2-block">셀프 인테리어의 시작.</h2>
			<p class="content-detail-text">살다 보니 조금씩 본래 맥시멀리스트의 기질이 꿈틀거리며
				올라오기 시작했어요. 코로나도 점점 더 심해지고 외출을 하는데 많은 제약이 생기기 시작한 시점이었어요.&nbsp;그 핑계로
				대대적인 셀프 인테리어를 시작하게 됩니다.&nbsp;</p>
			<div class="content-detail-main1">
				<img alt="" src="images/community/cbody1_3.jpg">
			</div>
			<h2 class="bpd-view-text project-detail-h2-block">
				Concept <br>: 코로나 시대 모든 취미 생활을 집에서 해결하는 멀티플렉스 하우스
			</h2>
			<p class="content-detail-text">
				<i>1. 거실: 홈시어터 극장 & 멀티방</i>
			</p>
		</div>
		<!-- 댓글 -->
		<section class="comment1">
			<h3 class="comment1-header">댓글</h3>
		</section>
		<!-- Team Section Begin -->
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
	</div>
	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.richtext.min.js"></script>
	<script src="js/image-uploader.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>