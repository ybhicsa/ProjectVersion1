<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공간, 시공문의 | 인테리어상담</title>
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

<style type="text/css">
body {
   background-color: #FAFAFA;
}

#myPageDiv {
   border-top: 1px solid #ebebeb;
   text-align: center;
}
header {
   position: fixed;
   width: 100%;
   margin-top: -17%;
   z-index: 99999;
   background-color: rgb(251, 251, 251);
   border-bottom: 1px solid #dbdbdb;
}

section {
   text-align: center;
}
.main_wrap {
   margin-top: 17%;
}

.css_inquiries_input {
   text-align: left;
   width: 26%;
   padding: 1% 1% 1%;
   border: 1px solid #dbdbdb;
   background-color: #fff;
   border-radius: 4px;
   box-sizing: border-box;
   font-size: 15px;
   transition: border-color .1s, background-color .1s;
   resize: none;
   -webkit-appearance: none;
}

.css_input_btn {
   width: 26%;
   height: auto;
   margin-bottom: 2%;
   padding: 8px 8px 8px 8px;
   border: 1px solid #dbdbdb;
   background-color: #00C892;
   border-radius: 4px;
   box-sizing: border-box;
   align-items: center;
   font-weight: 700;
   font-size: 15px;
   line-height: 21px;
   transition: border-color .1s, background-color .1s;
   resize: none;
   -webkit-appearance: none;
}

.inquiriesExample {
   color: grey;
   padding-top: 13%;
   font-size: 12px;
}

h2 {
   margin-top: 1%;
   display: block;
   font-size: 25px;
   font-weight: bold;
   color: rgb(41, 41, 41);
   word-break: keep-all;
}

#inquiriesTitle {
   margin-top: 2%;
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

.aTag {
   text-decoration: none;
   color: black;
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
   <section>
      <form action="questionOk" method="post">
         <h2>고객센터 문의하기</h2>
         <span class="inquiriesExample">고객센터관련 문의사항만 접수가능합니다.</span>
         <p />
         <input class="css_inquiries_input" type="text" id="inquiriesTitle"
            name="ud_Title" placeholder="제목을 입력해주세요." required>
         <p />
         <textarea class="css_inquiries_input" id="inquiriesContent"
            name="ud_Content" rows="5%" cols="10%" placeholder="문의내용을 입력해주세요."
            required></textarea>
         <p />
         <input type="hidden" name="user_Nickname"
            value="${session_nickName }"> 
         <input class="css_input_btn"
            type="submit" value="문의하기" onclick="">
         <p />
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