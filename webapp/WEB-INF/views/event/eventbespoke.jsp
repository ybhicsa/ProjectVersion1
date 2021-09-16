<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>공간, 삼성 비스포크 콘테스트 (8/23 ~ 9/12)집꾸미기 이벤트</title>
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

.competition-page {
	text-align: center;
	border-radius: 10px 10px 10px 10px; /* 적용안됌 */
}

#lastFooter {
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
	<div class="competition-page">
		<img class="competition-page__image" alt=""
			src="img/event/bespoke/bespoke1.png"> <img
			class="competition-page__image" alt=""
			src="img/event/bespoke/bespoke2.png"> <img
			class="competition-page__image" alt=""
			src="img/event/bespoke/bespoke3.png"> <img
			class="competition-page__image" alt=""
			src="img/event/bespoke/bespoke4.png"> <a
			href="https://forms.gle/mhAVaLaxAFmfnPQe6"> <img
			class="competition-page__image" alt=""
			src="img/event/bespoke/info.png"> <img
			class="competition-page__image" alt=""
			src="img/event/bespoke/bespoke5.png">
		</a> <img class="competition-page__image" alt=""
			src="img/event/bespoke/bespoke6.png"> <img
			class="competition-page__image" alt=""
			src="img/event/bespoke/bespoke7.png"> <img
			class="competition-page__image" alt=""
			src="img/event/bespoke/bespoke8.png"> <a
			class="competition-page__button"
			href="/contents/card_collections/new?competition_id=569"
			target="_blank">콘테스트 참여하기</a>
		<div class="drop-down">
			<a class="competition-page__button competition-page__button--share">친구에게
				공유하기</a>
		</div>
		<!-- 댓글 시작 -->
		<div class="competition-page__comment">
			<section class="comment-feed">
				<h1 class="comment-feed__header">
					댓글&nbsp;<span class="comment-feed__header__count">14</span>
				</h1>
				<!-- 댓글 입력창 시작 -->
				<form class="comment-feed__form">
					<a href="/users/sign_in" class="comment-feed__form__cover"></a>
					<div class="comment-feed__form__user">
						<img
							src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36"
							srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144 3x">
					</div>
					<div class="comment-feed__form__input">
						<div class="comment-feed__form__content">
							<div class="comment-content-input">
								<div
									class="comment-content-input__text comment-feed__form__content__text"
									data-ph="댓글을 남겨 보세요." contenteditable="true"></div>
							</div>
						</div>
						<div class="comment-feed__form__actions">
							<button class="comment-feed__form__submit" aria-label="등록"
								type="submit" disabled="">등록</button>
						</div>
					</div>
				</form>
				<!-- 댓글 입력창 끝 -->
				<!-- 댓글 목록 시작 -->
				<ul class="comment-feed__list">
					<li class="comment-feed__list__item"><article
							class="comment-feed__item">
							<p class="comment-feed__item__content">
								<a href="/users/860450"
									class="comment-feed__item__content__author"> <img
									class="comment-feed__item__content__author__image" alt="샤론00"
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162709738631657042.jpeg?gif=1&amp;w=36"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162709738631657042.jpeg?gif=1&amp;w=72 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162709738631657042.jpeg?gif=1&amp;w=72 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/162709738631657042.jpeg?gif=1&amp;w=144 3x">
									<span class="comment-feed__item__content__author__name">
										<!-- 아이디 -->샤론00
								</span>
								</a> <span class="comment-feed__item__content__content"> <!-- 작성한 댓글 내용 -->참여
									완료 했어요~~~ ^^
								</span>
							</p>
							<footer class="comment-feed__item__footer">
								<time class="comment-feed__item__footer__time">19분 전</time>
								<span class="comment-feed__item__footer__likes zero"> <a
									class="comment-feed__item__footer__likes__icon"
									href="/users/sign_in"> <svg class="badge" width="15"
											height="14" preserveAspectRatio="xMidYMid meet">
										<path fill-rule="evenodd" class="heart"
												d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path>
									</svg>
								</a> <span class="comment-feed__item__footer__likes__count">0</span>
								</span> <a class="comment-feed__item__footer__like-btn"
									href="/users/sign_in">좋아요</a> <a
									class="comment-feed__item__footer__reply-btn"
									href="/users/sign_in">답글 달기</a> <a
									class="comment-feed__item__footer__report-btn"
									href="/users/sign_in">신고</a>
							</footer>
						</article></li>
				</ul>
				<!-- 댓글 목록 끝 -->
				<!-- 하단 페이지 버튼 -->
				<ul class="list-paginator">
					<li><button class="list-paginator__page sm selected"
							type="button">1</button></li>
					<li><button class="list-paginator__page sm" type="button">2</button></li>
					<li><button class="list-paginator__page sm" type="button">3</button></li>
					<!-- 옆으로 버튼 -->
					<li>
						<button class="list-paginator__next" type="button">
							<svg width="26" height="26" viewBox="0 0 26 26"
								preserveAspectRatio="xMidYMid meet">
								<g fill="none" fill-rule="evenodd"
									transform="matrix(-1 0 0 1 26 0)">
									<rect width="25" height="25" x=".5" y=".5" stroke="#DCDCDC"
									rx="4" />
									<g stroke="#424242" stroke-linecap="square" stroke-width="2">
										<path d="M14.75 8.263L10.25 13M10.25 13l4.5 4.737">
										</path>
									</g>
								</g>
							</svg>
						</button>
					</li>
					<!-- 옆으로 버튼 -->
				</ul>
				<!-- 하단 페이지 버튼 -->
			</section>
		</div>
	</div>
	<!-- top -->
	<a
		style="display: scroll; position: fixed; bottom: 10px; right: 20px; cursor: pointer;"
		href="#" title="top"> <i class="fas fa-arrow-circle-up"
		style="width: 2em; height: 2em;"></i></a>
	<!-- top -->
	<!-- Footer Section Begin -->
	<footer id="lastFooter">
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