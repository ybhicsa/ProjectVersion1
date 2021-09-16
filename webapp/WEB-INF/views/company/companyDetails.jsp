<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<link rel="stylesheet" href="css/store/store.css" type="text/css">
<link rel="stylesheet" href="css/store/store2.css" type="text/css">
<link rel="stylesheet" href="css/store/store3.css" type="text/css">

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>


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

#btnBuy {
	font: white;
}

footer {
	width: auto;
	height: auto;
	background: rgb(226, 226, 226);
}
</style>
<title>공간, 한샘 프라임 리츠 천연면피가죽 전동 리클라이너 소파</title>

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
	<!-- 전체 페이지 공통 -->
	<div class="main_wrap">
		<div id="wrap">
			<div id="container">
				<div id="detail_inner">
					<div
						class="xans-element- xans-product xans-product-headcategory path ">
						<span>현재 위치</span>
						<ol>
							<li><a href="/">홈</a></li>
							<li class=""><a href="/category/shop/42/">SHOP</a></li>
							<li class=""><a href="/category/상세페이지/44/">상세페이지</a></li>
							<li class="displaynone"><a href=""></a></li>
							<li class="displaynone"><strong><a href=""></a></strong></li>
						</ol>
					</div>



					<!-- 상단 제품 정보  -->
					<div
						class="xans-element- xans-product xans-product-detail top_inner">
						<div class="headingArea">
							<!-- 공급사 바로가기버튼 영역 -->
							<div class="supply displaynone">
								<span></span> <a href="#none" onclick=""><img src=""
									alt="공급사 바로가기" /></a>
							</div>
							<!-- //공급사 바로가기버튼 영역 -->
						</div>
						<div class="detailArea">
							<!-- 이미지 영역 -->
							<div
								class="xans-element- xans-product xans-product-image imgArea ">
								<div class="keyImg">
									<div class="thumbnail">
										<a href="#none" alt="P00000CJ"> <img
											src="companyImg/${companyVo.cc_Main }" alt="상세페이지 BigImage"
											class="BigImage " />
										</a>
									</div>
								</div>

								<!-- //참고 -->
								<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
								<div class="color displaynone"></div>
								<!-- //참고 -->
							</div>
							<!-- //이미지 영역 -->

							<!-- 상세정보 내역 -->
							<div class="infoArea soldout_displaynone">
								<div class="product_title ">
									${companyVo.cc_Introduction }<br>주상복합 인테리어
								</div>

								<div
									class="xans-element- xans-product xans-product-detaildesign">
									<div border="0">
										<ul>
											<li class=" summary_desc_css xans-record-"><span
												class="title"> <span
													style="font-size: 12px; color: #555555;">업체명</span>
											</span> <span class="con"> <span
													style="font-size: 12px; color: #555555;">${companyVo.cc_Cname }</span>
											</span></li>
											<li class=" summary_desc_css xans-record-"><span
												class="title"> <span
													style="font-size: 12px; color: #555555;">분야</span>
											</span> <span class="con"> <span
													style="font-size: 12px; color: #555555;">${companyVo.cc_Categories }</span>
											</span></li>
											<li class=" summary_desc_css xans-record-"><span
												class="title"> <span
													style="font-size: 12px; color: #555555;">지역</span>
											</span> <span class="con"> <span
													style="font-size: 12px; color: #555555;">${companyVo.cc_Address2 }</span>
											</span></li>
											<li class=" summary_desc_css xans-record-"><span
												class="title"> <span
													style="font-size: 12px; color: #555555;">평균 기간</span>
											</span> <span class="con"><span
													style="font-size: 12px; color: #555555;">8주</span> </span></li>
										</ul>
									</div>
								</div>

								<div class="xans-element- xans-product xans-product-action">
									<div class="ec-base-button">

										<a href="interiorInquiries?cc_Cname=${companyVo.cc_Cname }"
											id="btnBuy" class="first dj-btn-1"><span
											style="color: white;">예약 문의</span> </a>
									</div>


									<!-- //참고 -->
								</div>
								<div id="map1" style="width: 100%; height: 350px;"></div>
								<script type="text/javascript"
									src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8b422d065744f084800c4b3e623f2650&libraries=services"></script>
								<script>
									var cc_Cname = '${companyVo.cc_Cname }';
									var cc_Address2 = '${companyVo.cc_Address2 }';
									var mapContainer = document
											.getElementById('map1'), // 지도를 표시할 div 
									mapOption = {
										center : new kakao.maps.LatLng(
												33.450701, 126.570667), // 지도의 중심좌표
										level : 3
									// 지도의 확대 레벨
									};

									// 지도를 생성합니다    
									var map = new kakao.maps.Map(mapContainer,
											mapOption);

									// 주소-좌표 변환 객체를 생성합니다
									var geocoder = new kakao.maps.services.Geocoder();

									// 주소로 좌표를 검색합니다
									geocoder
											.addressSearch(
													cc_Address2,
													function(result, status) {

														// 정상적으로 검색이 완료됐으면 
														if (status === kakao.maps.services.Status.OK) {

															var coords = new kakao.maps.LatLng(
																	result[0].y,
																	result[0].x);

															// 결과값으로 받은 위치를 마커로 표시합니다
															var marker = new kakao.maps.Marker(
																	{
																		map : map,
																		position : coords
																	});

															// 인포윈도우로 장소에 대한 설명을 표시합니다
															var infowindow = new kakao.maps.InfoWindow(
																	{
																		content : '<div style="width:150px;text-align:center;padding:6px 0;">'+cc_Cname+'</div>'
																	});
															infowindow
																	.open(map,
																			marker);

															// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
															map
																	.setCenter(coords);
														}
													});
								</script>
							</div>
							<!-- 상품상세정보 -->
							<div class="xans-element- xans-product xans-product-additional">
								<div style="overflow: hidden;" class="">
									<div id="prdDetail" class="ec-base-tab_detail grid5">
										<div class="tab_margin"></div>
										<div class="detail_tap_inner">
											<ul class="menu">
												<li class="selected"><a href="#prdDetail">상세사진</a></li>
												<li><a href="#prdInfo">업체정보</a></li>
												<li><a href="#prdReview">업체후기 <span class="count">(0)</span></a></li>
												<li><a href="#prdQnA">업체Q&A <span class="count">(0)</span></a></li>
											</ul>
										</div>

										<div class="xans-element- xans-product xans-product-detail ">
											<div class="eventArea displaynone">
												<div class="event"></div>
											</div>
										</div>

										<div
											class="xans-element- xans-product xans-product-additional">
											<div class="cont">
												<p></p>
												<div style="text-align: center;">
													<p>
														<img alt="" src="images/company/ibody1.jpg"><br>

													</p>
													<p>&nbsp;</p>
													<br>
													<p></p>
													<p></p>
													<p></p>
													<p></p>
													<p></p>
													<p></p>
													<p></p>
												</div>
												<p></p>
											</div>
											<!-- //상품상세정보 -->
											<!-- 상품구매안내 -->
											<div id="prdInfo" class="ec-base-tab_detail grid5 ">
												<div class="tab_margin"></div>
												<div class="detail_tap_inner">
													<ul class="menu">
														<li><a href="#prdDetail">상세사진</a></li>
														<li class="selected"><a href="#prdInfo">업체정보</a></li>
														<li><a href="#prdReview">업체후기 <span class="count">(0)</span></a></li>
														<li><a href="#prdQnA">업체Q&A <span class="count">(0)</span></a></li>
													</ul>
												</div>

												<div class="cont_all">
													<ul>
														<li class="cont" style="width: 100%">
															<div class="cont_inner">
																<div class="cont_inner">
																	<h3>업체 정보</h3>
																	종합리모델링 전문<br> 서울 강남구 위치<br> 주요 활동지역 : 서울특별시
																	강남구, 서울특별시 서초구, 서울특별시 송파구<br> 경력 10-15년<br>
																	A/S 12개월<br> 직영시공 설계도면 3D디자인 전문감리 공정표 세금계산서 현금영수증
																	하자이행증권 마감청소<br> 다린 인테리어 디자인은 현장 실측과 상담을 통한 정확하고
																	깨끗한 견적을 제시하며 믿고 맡겨 주시는 고객님들께 완벽한 결과를 보여드립니다.
																</div>
															</div>
														</li>
													</ul>
												</div>
											</div>
											<!-- //상품구매안내 -->
											<!-- 상품사용후기 -->
											<div id="prdReview" class="ec-base-tab_detail grid5 ">
												<div class="tab_margin"></div>
												<div class="detail_tap_inner">
													<ul class="menu">
														<li><a href="#prdDetail">상세사진</a></li>
														<li><a href="#prdInfo">업체정보</a></li>
														<li class="selected"><a href="#prdReview">업체후기 <span
																class="count">(0)</span></a></li>
														<li><a href="#prdQnA">업체Q&A<span class="count">(0)</span></a></li>
													</ul>
												</div>



												<div id="p_review" class="detail_p_r">

													<h2 class="title">REVIEW</h2>
												</div>



												<div class="board">
													<div class="ec-base-button typeBorder">
														<span class="gRight"> <a
															href="/board/product/write.html?board_no=4&amp;product_no=61&amp;cate_no=42&amp;display_group=1"
															class="dj-btn-2">리뷰쓰기</a> <a
															href="/board/p_review/list.html?board_no=4"
															class="dj-btn-2">리스트</a>
														</span>
													</div>


												</div>
											</div>
											<!-- //상품사용후기 -->
											<!-- 업체 문의 -->
											<div id="prdQnA" class="ec-base-tab_detail grid5 ">
												<div class="tab_margin"></div>
												<div class="detail_tap_inner">
													<ul class="menu">
														<li><a href="#prdDetail">상세사진</a></li>
														<li><a href="#prdInfo">업체정보</a></li>
														<li><a href="#prdReview">업체후기 <span class="count">(0)</span></a></li>
														<li class="selected"><a href="#prdQnA">업체Q&A <span
																class="count">(0)</span></a></li>
													</ul>
												</div>


												<div class="board">
													<div class="ec-base-button typeBorder">
														<span><h3>Q &amp; A</h3></span> <span class="gRight">
															<a href="/board/product/list.html?board_no=6"
															class="dj-btn-2">리스트</a>
														</span>
													</div>
													<p class="nodata" data-i18n="PRODUCT.BOARD_NODATA">게시물이
														없습니다</p>

												</div>
											</div>
											<!-- ec-base-tab_detail grid5 -->
											<!-- //업체문의 -->
										</div>
										<!-- xans-element- xans-product xans-product-additional -->
									</div>
									<!-- ec-base-tab_detail grid5 -->
								</div>
							</div>
							<!-- xans-element- xans-product xans-product-additional -->
							<!-- container (body부분) -->
						</div>
						<!-- div wrap -->
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
									style="margin-left: 35%; width: 4em; height: 4em;"></i></a><a
									href=""><i class="fab fa-google-play"
									style="margin-left: 2%; width: 4em; height: 4em;"></i></a><a
									href=""><i class="fab fa-facebook"
									style="margin-left: 2%; width: 4em; height: 4em;"></i></a><a
									href=""><i class="fab fa-instagram"
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