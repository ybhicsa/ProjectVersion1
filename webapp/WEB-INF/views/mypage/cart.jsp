<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공간, 장바구니</title>
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

section {
	width: 80%;
	text-align: center;
	margin-top: 1%;
}

#categoryName {
	margin-top: 3%;
}

.aTag {
	text-decoration: none;
	color: black;
}

hr {
	width: 80%;
}
table {
	text-align: center;
	width: 100%;
	margin-left: 15%;
}
thead {
	border-top: 0.2px solid;
	border-bottom: 0.2px solid;
	border-color: gray;
}

.page-num {
	margin-top: 15px;
}

.page-num oi {
	width: 36px;
	height: 35px;
}

.num {
	position: relative;
	height: 33px !important;
	margin-left: 5px;
	margin-right: 5px;
	border: none;
}

.num>span {
	font-weight: bold;
	position: relative;
	top: 2px;
}

footer {
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
	display: block;
	font-size: 25px;
	font-weight: bold;
	color: rgb(41, 41, 41);
	word-break: keep-all;
}

.row2 {
	text-align: center;
	width: 100%;
	margin-left: 12%;
}

#myPageDiv {
	border-top: 1px solid #ebebeb;
	text-align: center;
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
#search{
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

.mypageUserBtn {
	width: 3%;
	border: none;
	background-color: #00C892;
	border-radius: 4px;
	box-sizing: border-box;
	align-items: center;
	font-weight: 700;
	line-height: 2em;
	font-size: 13px;
}

#cartSectionText {
	color: #757575;
	font-weight: 700;
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
th{width: 4em}
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
								<li><a href="company">시공업체</a></li>
								<!-- 시공업체 -->
								<!-- <li><a href="interiorInquiries">시공문의</a></li> -->
								<!-- 시공업체상세페이지 -->
								<li><a href="community">커뮤니티</a></li>
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
									name="search" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;search">
								<!-- 검색 -->
								<input class="fas fa-search fa-lg" id="searchButton" type="button" id="" onclick=""
									value="검색">
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
                               <li class="active"><a href="myPage?nickname=${session_nickName }">마이페이지</a></li>
								<!-- 홈 -->
								<li><a href="userInfoModify?s_id=${s_ID }">회원정보수정</a></li>
								<!-- 구매내역 -->
								<li><a href="buyDetails?s_id=${s_ID }">구매내역</a></li>
								<!-- 시공문의내역 -->
								<li><a href="myInquiries?s_id=${s_ID }">시공문의</a></li>
								<!-- 장바구니 -->
								<li><a href="cart?s_id=${s_ID }">장바구니</a></li>
								<!-- 판매자등록 -->
								<li><a href="companyRegistration">시공업체등록</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    <!-- 마이페이지 네비게이션 끝 -->
	</header>
	<!-- Header End -->
	<section>
		<table class="table no-margin shop-table">
			<colgroup>
				<col>
				<col style="width: 40px">
				<col style="width: 100px">
				<col style="width: 80px">
				<col style="width: 120px">
				<col style="width: 130px">
				<col style="width: 130px">
				<col style="width: 150px">
			</colgroup>
			<thead class="item-subject">
				<tr>
					<th>
						<div class="checkbox checkbox-styled no-margin">
							<label> <input type="checkbox" value=""
								class="_all_check"
								onclick="SITE_SHOP_CART.toggleAllCheckCartItem($(this).is(':checked'));">
								<span></span>
							</label>
						</div>
					</th>
					<th class="item-info"><span class="hidden-sm hidden-xs">제품사진</span>
					</th>
					<th class="wish"><span class="hidden-sm hidden-xs">제품명</span></th>
					<th class="amount"><span class="hidden-sm hidden-xs">수량</span></th>
					<th class="deliv_price"><span class="hidden-sm hidden-xs">배송수단</span></th>
					<th class="deliv_price"><span class="hidden-sm hidden-xs">배송비</span></th>
					<th class="price"><span class="hidden-sm hidden-xs">가격</span></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			
			<c:forEach items="${Cartlist }" var="cart">
				<tr class="content" style="overflow: visible;">
					<td class="slt">
						<div class="checkbox checkbox-styled no-margin">
							<label> <input type="checkbox"
								value="i2021083094229276e1319" class="_cartItemCheckbox"
								onclick="SITE_SHOP_CART.toggleCheckCartItem()" checked="checked"
								name="" id=""><span></span>
							</label>
						</div>
					</td>
					<td class="img margin-bottom-xl td-blocked"><a
						class="cart-item-wrap" href="/PRODUCT/?idx=3">
							<div class="cart-item-img">
								<img
									src="productImg/${cart.product_Main }"
									width="60" height="60" alt="cart item">
							</div>
							<p class="cart-item-title"
								id="shop_cart_title_i2021083094229276e1319">In&nbsp;tellus&nbsp;integer</p>
					</a></td>
					<td class="_wish_status_i2021083094229276e1319 wish ">
						<!-- check class 추가시 활성화 상태로 변경--> <a href="javascript:;"
						onclick="if ($(this).parent().hasClass('check')) SITE_SHOP_CART.deleteProdWish('i2021083094229276e1319'); else SITE_SHOP_CART.addProdWish('i2021083094229276e1319');"><i
							class="btl bt-heart" aria-hidden="true"></i><span>${cart.product_Name }</span></a>
					</td>
					<td class="amount td-blocked">
						<div class="text-13 title text-center">
							<span class="hidden-lg hidden-md hiddden-sm">${cart.product_Num }</span>
						</div>
					</td>
					<td class="td-blocked"><span
						class="hidden-lg hidden-md hiddden-sm title">배송수단</span>
						<div class="cont text-12 text-center">
							<div class="margin-bottom-lg">택배</div>
						</div></td>
					<td class="td-blocked"><span
						class="hidden-lg hidden-md hiddden-sm title">배송비</span>
						<div class="cont text-12 text-center">
							<div>
								<span>무료</span>
							</div>
							<a href="javascript:;" class="html-popover deliv_price_info"
								data-toggle="popover" title=""
								data-content="<div class=&quot;&quot;><label class=&quot;text-bold text-13&quot;>배송비
								안내</label>
							<div class=&quot;table-responsive&quot;>
									<table class=&quot;tableno-margin&quot;><caption class=&quot;text-bold&quot;>조건부 무료배송</caption><tr><td colspan=&quot;2&quot;><p>2,500원<br>50,000원 이상 구매 시 무료배송</p></td></tr></table>
				</div></div>" data-placement="auto" data-original-title="">
						<i class="btm bt-question-circle" aria-hidden="true"></i>
						<span class="sr-only">배송안내 툴팁</span>
						</a>
						</div>
					</td>
					<td class="price td-blocked hidden-xs">${cart.product_Price2 }원</td>
					<td class="cart-btn-tools">
						<a href="javascript:;" class="btn btn-cart-option hidden-lg hidden-md hidden-sm _modal_open_btn" onclick="SITE_SHOP_CART.showChangeCartItem('i2021083094229276e1319')">옵션 변경</a>
				
						<a class="btn btn-cart-order" href="javascript:;" onclick="SITE_SHOP_CART.addOrderWithCartDirect('normal','i2021083094229276e1319','https://leesangbum.imweb.me/shop_cart')">주문</a>
						<a href="javascript:;" class="btn btn-cart-delete" onclick="SITE_SHOP_CART.removeCartItem('i2021083094229276e1319')">삭제</a>
					</td>
			</tr>
			
			</c:forEach>
			
				<tr class="payment-info">
					<td colspan="5"></td>
					<td class="pay-txt">
						<p>상품가격</p>
						<p>배송비</p>
						<p class="_cart_period_field" style="display: none;">상품 할인금액</p>
					</td>
					<td class="pay-number">

						<p class="_cart_price holder">
							<span class="opacity-0">상품가격</span><span class="fake-area">${All_price }원</span>
						</p>
						<p class="_cart_deliv_price holder">
							<span class="opacity-0">배송비</span><span class="fake-area">무료</span>
						</p>
					</td>
					<td></td>
				</tr>
			</tbody>
			<script>
				SITE_SHOP_CART.addSelectedCartItem('i2021083094229276e1319');
			</script>
			<script>
				SITE_SHOP_CART.toggleAllSelectCk();
			</script>
			<tfoot>
				<tr>
					<td class="cart-btn-tools" colspan="5"><a href="javascript:;"
						class="btn" onclick="SITE_SHOP_CART.removeSelectedCartItem()">선택상품
							삭제</a> <a href="javascript:;" class="btn"
						onclick="SITE_SHOP_CART.addProdWishMulti()">위시리스트 담기</a></td>
					<td class="amount txt"><span>결제금액</span></td>
					<td class="amount text-brand"><span
						style="font-size: 20px; font-weight: 600;"
						id="cart_main_total_price">${All_price }원</span></td>
					<td></td>
				</tr>
			</tfoot>
		</table>
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
</body>
</html>