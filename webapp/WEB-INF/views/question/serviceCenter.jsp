<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<html>
<head>
<meta charset="UTF-8">
<title>공간, 시공업체등록 | 아파트 | 단독주택 | 빌라 | 원룸</title>
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
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="../css/nice-select.css" type="text/css">
<link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="../css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="../css/style.css" type="text/css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script>
	function openZipSearch() {
		new daum.Postcode({
			oncomplete : function(data) {
				$("#cc_Address1").val(data.zonecode);
				$("#cc_Address2").val(data.address);
			}
		}).open();
	}
</script>

<style type="text/css">
body {
	background-color: #FAFAFA;
}
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

section {
	width: 80%;
	text-align: center;
	margin-top: 1%;
	margin-left: 10%;
}

hr {
	width: 80%;
}

footer {
	text-align: center;
	color: black;
	margin-top: 15%;
	font-size: 12px;
}

.mainLogo {
	font-family: 'Gugi', cursive;
	color: #111;
	font-size: 55px;
}

h2 {
	text-align: center;
	margin-top: 1%;
	margin-bottom: 3%;
	display: block;
	font-size: 25px;
	font-weight: bold;
	color: rgb(41, 41, 41);
	word-break: keep-all;
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

#cartForm span {
	box-sizing: content-box;
	margin-right: 3%;
}

#cartSection {
	text-align: center;
	width: 100%;
	height: auto;
	border: 1px dashed #dbdbdb;
	border-radius: 20px 20px 20px 20px;
}

.css_input_btn {
	width: 26%;
	margin-bottom: 1%;
	padding: 8px 8px 8px 8px;
	border: 1px solid #dbdbdb;
	background-color: #00C892;
	border-radius: 4px;
	box-sizing: border-box;
	align-items: center;
	font-weight: 700;
	font-size: 15px;
	line-height: 40px;
	transition: border-color .1s, background-color .1s;
	resize: none;
	-webkit-appearance: none;
}

.css_input_btn2 {
	width: 26%;
	padding: 8px 8px 8px 8px;
	border: 1px solid #dbdbdb;
	background-color: #00C892;
	border-radius: 4px;
	box-sizing: border-box;
	align-items: center;
	font-weight: 700;
	font-size: 15px;
	line-height: 40px;
	transition: border-color .1s, background-color .1s;
	resize: none;
	-webkit-appearance: none;
}

#cartSectionText {
	color: #757575;
	font-weight: 700;
}

#registrationUl {
	text-align: left;
	margin-left: 28%;
	font-size: 14px;
}

.registraionLable {
	text-align: left;
	font-size: 15px;
	font-weight: 700;
}

.registraionLable2 {
	text-align: left;
	margin-left: 8.5%;
	font-size: 15px;
	font-weight: 700;
}

.css_input_userInfo_email {
	width: 11.5%;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
	line-height: 2.3em;
	transition: border-color .1s, background-color .1s;
	resize: none;
}

.css_input_userInfo_email2 {
	width: 37%;
	margin-bottom: 1%;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
	line-height: 2.3em;
	transition: border-color .1s, background-color .1s;
	resize: none;
}

.css_input_userInfo_email3 {
	width: 18%;
	margin-bottom: 1%;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
	line-height: 2.3em;
	transition: border-color .1s, background-color .1s;
	resize: none;
}

.css_input_userInfo {
	width: 26%;
	padding: 1%; 1%; 1%;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
	transition: border-color .1s, background-color .1s;
	resize: none;
}

.css_input_userInfo2 {
	width: 11.5%;
	height: 2.5em;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
	transition: border-color .1s, background-color .1s;
	resize: none;
}

.css_input_userInfo3 {
	width: 17.2%;
	height: 2.5em;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 15px;
	transition: border-color .1s, background-color .1s;
	resize: none;
}

.div1 label {
	position: relative;
	width: 10%;
	text-align: left;
	color: #111;
}

.div2 {
	margin-left: 26%;
	margin-bottom: 3%;
}

#input_file {
	margin-left: 7.5%;
}

.joinExample {
	color: grey;
	font-size: 12px;
	margin-bottom: 1%;
}

table {
	margin-bottom: 1%;
}

th {
	background-color: #dbdbdb;
}

table, th, td {
	border: 1px solid black;
	text-align: center;
	margin-left: 19%;
	margin-top: 3%;
	line-height: 2em;
}

#SMSCheck {
	text-align: center;
	margin-right: 11px;
}

#SMSLabel {
	text-align: left;
	width: 70%;
}

.labelStar {
	color: red;
}

#myPageDiv {
	border-top: 1px solid #ebebeb;
	text-align: center;
}

footer {
	width: auto;
	height: auto;
	background: rgb(226, 226, 226);
}

.div1 label{
	position: relative;
	width: 10%;
	text-align: left;
	color: #111;
	
}
.div2 {
	margin-left: 20%;
	margin-right: 20%;
	padding-top:2%;
	
	margin-bottom: 3%;
}

.labelStar {
	color: red;
}

</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
			
			 /* $("#questionForm").click(function(){
				 alert("test");
			 } */
			var idAdd = document.getElementById("add_text");
			var idAdd2 = document.getElementById("add_text2");
			var idAdd3 = document.getElementById("add_text3");
			var idAdd4 = document.getElementById("add_text4");
			var idAdd5 = document.getElementById("add_text5");
			var idAdd6 = document.getElementById("add_text6");
			var idAdd7 = document.getElementById("add_text7");
			var idAdd8 = document.getElementById("add_text8");
			var idAdd9 = document.getElementById("add_text9");
			
		    $("#question1").click(function(){
		       // alert("Hello ");
		       if (idAdd) {
			   idAdd.innerHTML = "<br>우측 상단 마이페이지를 클릭 후 [구매내역]을 통해 확인 가능합니다.";
					return false;
				} 
		    }) 
		    /* $("#question1").click(function(){
		      
		       if (idAdd == null) {
			   idAdd.innerHTML = "";
					return true;
				} 
		    })  */
		    
		    
		    $("#question2").click(function(){
		    	if (idAdd2) {
			   idAdd2.innerHTML = "<br>카카오페이를 이용해 편리한 결제가 가능합니다.";
					return false;
				}  
		    }) 
		    $("#question3").click(function(){
		       if (idAdd3) {
			   idAdd3.innerHTML = "<br>전화주문은 준비중에 있습니다";
					return false;
				}  
		    }) 
		    $("#question4").click(function(){
		       if (idAdd4) {
			   idAdd4.innerHTML = "<br>각카드사 별로 상이하며,카드사를 통해 확인 가능합니다.";
					return false;
				}  
		    })
		    
		    
		    $("#question5").click(function(){
		       if (idAdd5) {
			   idAdd5.innerHTML = "<br>freespace@naver.com으로 문의 부탁드립니다.";
					return false;
				}  
		    })
		    $("#question6").click(function(){
		       if (idAdd6) {
			   idAdd6.innerHTML = "<br>각카드사 별로 상이하며,카드사를 통해 확인 가능합니다.";
					return false;
				}  
		    })
		    $("#question7").click(function(){
		       if (idAdd7) {
			   idAdd7.innerHTML = "<br>우측 상단 프로필 사진을 클릭 후 [마이홈 > 좋아요] 페이지에서 확인 가능합니다.";
					return false;
				}  
		    })
		    $("#question8").click(function(){
		       if (idAdd8) {
			   idAdd8.innerHTML = "<br>[공간]이 직접 상담과 시공을 진행하지 않습니다.";
					return false;
				}  
		    })
		    $("#question9").click(function(){
		       if (idAdd9) {
			   idAdd9.innerHTML = "<br>오늘의집 전문가 찾기 서비스는 오늘의집 사용자와 인테리어 전문가님을 중개하는 서비스로, 따로 진행되지 않습니다.";
					return false;
				}  
		    })
		    
		 });
   
</script>
</head>
<body>
	<!-- Offcanvas Menu Wrapper Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="offcanvas-menu-wrapper">
		<div class="canvas-close">
			<span class="icon_close"></span>
		</div>
		<div class="logo">
			<a href="index"><span class="mainLogo">공간</span></a>
		</div>
		<div id="mobile-menu-wrap"></div>
		<div class="om-widget">
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
								<a href="myPage?nickname=${session_nickName }" class="layout-navigation-bar-login__item">마이페이지</a>
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
		<!-- 마이페이지 네비게이션 -->
		<div id="myPageDiv" class="hs-nav">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<nav class="nav-menu">
							<ul>
								<!-- 마이페이지 -->
								<li class="active"><a href="myPage?nickname=${session_nickName }">마이페이지</a></li>
								<!-- 홈 -->
								<li><a href="userInfoModify?s_id=${s_ID }">회원정보수정</a></li>
								<!-- 구매내역 -->
								<li><a href="buyDetails?s_id=${s_ID }">구매내역</a></li>
								<!-- 장바구니 -->
								<li><a href="cart?s_id=${s_ID }">장바구니</a></li>
								<!-- 시공문의내역 -->
								<li><a href="myInquiries?s_id=${s_ID }">시공문의</a></li>
								<!-- 판매자등록 -->
								<li><a href="companyRegistration">시공업체등록</a></li>
								<!-- 문의하기 -->
								<li><a href="serviceCenter">고객센터</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<!-- 마이페이지 네비게이션 끝 -->
	</header>
	<div class="main_wrap">
	<section >
		<form action="question" method="post" id="ServiceForm">
			
			<div>
				<br><br><br><br>
				
			</div>
			<h2>고객센터</h2>
			운영시간:평일 09:00 ~ 18:00(주말 & 공휴일 제외)<br>
			이메일 : freespace@naver.com<br>
			전화 : 1670-0876<br><br>
			<button type="submit"  value="결제하기" class="css_input_btn">문의하기</button>

			<br>
			
			<br><div align="center">
			
			<label><span class="labelStar">&nbsp;*</span></label>
			<label><span id="question1">주문 내역은 어떻게 확인할 수 있나요?</span></label>
			<b><span id="add_text" class="text_add"></span></b><br>
			<div class="div2" style="border-bottom: 1px solid #dbdbdb;">
			</div>
			
			<br><div align="center">
			<label><span class="labelStar">&nbsp;*</span></label>
			<label><span id="question2">결제 방법은 어떤 것이 있나요?</span></label>
			<b><span id="add_text2" class="text_add2"></span></b><br>
			<div class="div2" style="border-bottom: 1px solid #dbdbdb;">
			</div>
			<br><div align="center">
			<label><span class="labelStar">&nbsp;*</span></label>
			<label><span id="question3">비회원주문 및 전화주문이 가능한가요?</span></label>
			<b><span id="add_text3" class="text_add3"></span></b><br>
			<div class="div2" style="border-bottom: 1px solid #dbdbdb;">
			</div>
			<br><div align="center">
			<label><span class="labelStar">&nbsp;*</span></label>
			<label><span id="question4">신용카드 무이자 할부가 되나요?</span></label>
			<b><span id="add_text4" class="text_add4"></span></b><br>
			<div class="div2" style="border-bottom: 1px solid #dbdbdb;">
			</div>
			<br><div align="center">
			<label><span class="labelStar">&nbsp;*</span></label>
			<label><span id="question5">회원가입시 이미 가입된 이메일이라고 표시됩니다. 어떻게 해야하나요?</span></label>
			<b><span id="add_text5" class="text_add5"></span></b><br>
			<div class="div2" style="border-bottom: 1px solid #dbdbdb;">
			</div>
			<br><div align="center">
			<label><span class="labelStar">&nbsp;*</span></label>
			<label><span id="question6">배송은 얼마나 걸리나요?</span></label>
			<b><span id="add_text6" class="text_add6"></span></b><br>
			<div class="div2" style="border-bottom: 1px solid #dbdbdb;">
			</div>
			<br><div align="center">
			<label><span class="labelStar">&nbsp;*</span></label>
			<label><span id="question7">"좋아요"를 누른 콘텐츠(사진/집들이/노하우/등)들은 어디서 볼 수 있나요?</span></label>
			<b><span id="add_text7" class="text_add7"></span></b><br>
			<div class="div2" style="border-bottom: 1px solid #dbdbdb;">
			</div>
			<br><div align="center">
			<label><span class="labelStar">&nbsp;*</span></label>
			<label><span id="question8">인테리어 상담과 시공을 직접해주시나요?</span></label>
			<b><span id="add_text8" class="text_add8"></span></b><br>
			<div class="div2" style="border-bottom: 1px solid #dbdbdb;">
			</div>
			<br><div align="center">
			<label><span class="labelStar">&nbsp;*</span></label>
			<label><span id="question9">신용카드 무이자 할부가 되나요?</span></label>
			<b><span id="add_text9" class="text_add9"></span></b><br>
			<div class="div2" style="border-bottom: 1px solid #dbdbdb;">
			</div>
			
			
			
			
			
			
			
			
			
			
			
			<!-- <div class="div2" style="border-bottom: 1px solid #dbdbdb;"></div> -->
			
			
		</form>
	</section>
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