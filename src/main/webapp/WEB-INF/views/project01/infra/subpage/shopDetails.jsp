<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="../../include/config/jstl.jsp"%>
<%@ include file="../../include/config/userTags.jsp"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta name="description" content="CrowMarket">
<meta name="keywords" content="CrowMarket, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Crow_Market</title>
<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">
<%@ include file="../../include/P1link/project1CSS.jsp"%>
<style>
#comment_Item p {
	color: black;
	text-align: center;
}
/* 레이아웃 - 댓글 */
.comments {
	border: 1px solid black;
	background: white;
	border-radius: 15px;
	margin-bottom: 2px;
}

.comments .comment {
	border-bottom: 1px solid #fff;
	padding: 20px;
}

.comments .comment:last-child {
	border-bottom: none;
}

/* 상단 메뉴 */
.top {
	display: flex;
	flex-direction: row;
	align-items: center;
}

.top .username {
	font-weight: bold;
}

.top .utility {
	display: flex;
	flex-direction: row;
	margin-left: auto;
}

/* 하단 메뉴 */
.bottom {
	display: flex;
	flex-direction: row;
	align-items: center;
	list-style: none;
	padding: 0;
	margin: 0;
	text-transform: uppercase;
	letter-spacing: -0.5px;
	font-weight: bold;
	font-size: 14px;
}

.bottom .divider {
	width: 1px;
	height: 20px;
	background-color: #dbdbdb;
	margin: 0 20px;
}

.bottom .menu {
	margin: 0;
	padding: 0;
}

.btnMenu {
	border: 1px solid black;
}
</style>
</head>
<body>
	<%@ include file="../../include/config/header.jsp"%>
	<!-- Header Section End -->
	<!-- Shop Details Section Begin -->
	<section class="shop-details">
		<div class="product__details__pic">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="product__details__breadcrumb">
							<a href="./index">Home</a> <a href="./shopList">Shop</a> <span>Product
								Details</span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3 col-md-3">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab">
									<div class="product__thumb__pic set-bg"
										data-setbg="/resources/project1/img/product/K515-1.jpg">
									</div>
							</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab">
									<div class="product__thumb__pic set-bg"
										data-setbg="/resources/project1/img/product/K515-2.jpg">
									</div>
							</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-3" role="tab">
									<div class="product__thumb__pic set-bg"
										data-setbg="/resources/project1/img/product/K515-3.jpg">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="col-lg-6 col-md-9">
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<div class="product__details__pic__item">
									<img src="/resources/project1/img/product/K515-1.jpg"
										alt="k515-1 사진">
								</div>
							</div>
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<div class="product__details__pic__item">
									<img src="/resources/project1/img/product/K515-2.jpg"
										alt="k515-2 사진">
								</div>
							</div>
							<div class="tab-pane" id="tabs-3" role="tabpanel">
								<div class="product__details__pic__item">
									<img src="/resources/project1/img/product/K515-3.jpg"
										alt="k515-3 사진">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="product__details__content">
			<div class="container">
				<div class="row d-flex justify-content-center">
					<div class="col-lg-8">
						<div class="product__details__text">
							<h4>${item.productName}</h4>
							<div class="rating" id="rating"></div>
							<c:choose>
								<c:when test="${item.productPrice == item.productFinalPrice}">
									<h3>
										<fmt:formatNumber type="currency" value="${item.productPrice}" />
									</h3>
								</c:when>
								<c:otherwise>
									<h3>
										<fmt:formatNumber type="currency"
											value="${item.productFinalPrice}" />
										<span><fmt:formatNumber type="currency"
												value="${item.productPrice}" /></span>
									</h3>
								</c:otherwise>
							</c:choose>
							<div class="product__details__option">
								<div class="product__details__option__keytype">
									<span>축 선택 :</span>
									<c:forEach var="switchType" items="${listCategorySwitchType}">
										<label for="type${switchType.categoryOrder}">${switchType.categoryKO}
											<input type="radio"
											id="type${switchType.categoryOrder}" value="${switchType.categoryOrder}">
										</label>
									</c:forEach>
								</div>
							</div>
							<div class="product__details__cart__option">
								<div class="quantity">
									<div class="pro-qty">
										<input id="Quantity" type="text" value="1">
									</div>
								</div>
								<button class="primary-btn" id="payment_btn"
									data-bs-toggle="modal" data-bs-target="#Modal">결제하기
							</div>
							<!-- 결제 모달 -->
							<div class="modal fade" id="testModal" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h4 class="modal-title" id="myModalLabel">결제</h4>
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
										</div>
										<div class="modal-body">
											<div class="checkout__order">
												<h4 class="order__title">Your order</h4>
												<form onsubmit="searchPlaces(); return false;" >
												<div class="checkout__order__products">
													<table class="table">
														<thead>
															<tr>
																<th scope="col" class="text-center">제품</th>
																<th scope="col">수량</th>
																<th scope="col">가격</th>
																<th scope="col">최종가격</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>${item.productName}</td>
																<td id="orderQuantity">---</td>
																<td>${item.productFinalPrice}원</td>
																<td id="orderPrice"><fmt:formatNumber
																type="currency" value="" /></td>
															</tr>
														</tbody>
													</table>
												</div>
												  
												<div class="d-flex flex-column">
												<span>배송지 </span><input type="text" class="inAdress" id="address_kakao" name="address_kakao">
												<span>상세주소 </span><input type="text" class="inAdress" id="address_detail" name="address_detail">
												</div>
												</form>
											</div>
										<div  id="map" style="height:300px; margin: auto;"></div>
												<button id="btnOrder" type="button" class="btn btn-success">PLACE ORDER</button>
										</div>
									</div>
								</div>
							</div>
							<div class="product__details__btns__option">
								<a href="#"><i class="fa fa-heart"></i> add to wishlist</a>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="product__details__tab">
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									data-toggle="tab" href="#tabs-5" role="tab">Description</a></li>
								<li class="nav-item"><a id="reviews" class="nav-link"
									data-toggle="tab" href="#tabs-6" role="tab">Customer
										Previews(0)</a></li>
								<li class="nav-item"><a class="nav-link" data-toggle="tab"
									href="#tabs-7" role="tab">다른 제품과 비교</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="tabs-5" role="tabpanel">
									<div
										class="product__details__tab__content d-flex justify-content-center">
										<img src="/resources/project1/img/product/K515-poster.jpg"
											alt="k515포스터">
									</div>
								</div>
								<div class="tab-pane" id="tabs-6" role="tabpanel">
									<div class="product__details__tab__content">
										<div class="product__details__tab__content__item">
											Reviews</div>
										<form name="commentForm" id="commentForm">
											<div id="comment_Item"
												style="width: 100%; height: 100%; margin: auto;"></div>
											<select class="form-select" id="commentScore"
												name="commentScore">
												<option value="5">★★★★★</option>
												<option value="4">★★★★</option>
												<option value="3">★★★</option>
												<option value="2">★★</option>
												<option value="1">★</option>
											</select>
											<div class="input-group-lg d-flex justify-content-end">
												<input type="text" class="form-control"
													aria-label="Text input" id="commentText">
												<button type="button"
													class="btn btn-outline-secondary col-lg-3"
													id="btnSaveComment">등록</button>
											</div>
										</form>
									</div>
								</div>
								<div class="tab-pane" id="tabs-7" role="tabpanel">
									<div class="product__details__tab__content">
										<p class="note">다른 제품과 기본적인 스펙을 비교해보세요!</p>
										<div class="product__details__tab__content__item">
											<table class="table table-striped">
												<thead>
													<tr>
														<th scope="col">#</th>
														<th scope="col">선택제품</th>
														<th scope="col">같은브랜드제품</th>
														<th scope="col">타사제품</th>
													</tr>
												</thead>
												<tbody>
													<tr id="TableName">
														<th scope="row">제품명</th>
														<td>${item.productName}</td>
														<td>${competition1.productName}</td>
														<td>${competition2.productName}</td>
													</tr>
													<tr id="TableBrand">
														<th scope="row">브랜드</th>
														<c:forEach var="brand" items="${listCategoryBrand}">
															<c:if test="${item.brandCD == brand.categorySeq}">
																<td>${brand.categoryKO}</td>
															</c:if>
															<c:if test="${competition1.brandCD == brand.categorySeq}">
																<td>${brand.categoryKO}</td>
															</c:if>
															<c:if test="${competition2.brandCD == brand.categorySeq}">
																<td>${brand.categoryKO}</td>
															</c:if>
														</c:forEach>
													</tr>
													<tr id="TablePurpose">
														<th scope="row">용도</th>
														<c:forEach var="purpose"
															items="${listCategoryPurposeType}">
															<c:if test="${item.purposeCD == purpose.categorySeq}">
																<td>${purpose.categoryKO}</td>
															</c:if>
															<c:if
																test="${competition1.purposeCD == purpose.categorySeq}">
																<td>${purpose.categoryKO}</td>
															</c:if>
															<c:if
																test="${competition2.purposeCD == purpose.categorySeq}">
																<td>${purpose.categoryKO}</td>
															</c:if>
														</c:forEach>
													</tr>
													<tr id="TableArrangement">
														<th scope="row">키보드배열</th>
														<c:forEach var="itemArray"
															items="${listCategoryArrangementType}">
															<c:if
																test="${item.productArrangementCD eq itemArray.categorySeq}">
																<td>${itemArray.categoryKO}</td>
															</c:if>
															<c:if
																test="${competition1.productArrangementCD eq itemArray.categorySeq}">
																<td>${itemArray.categoryKO}</td>
															</c:if>
															<c:if
																test="${competition2.productArrangementCD eq itemArray.categorySeq}">
																<td>${itemArray.categoryKO}</td>
															</c:if>
														</c:forEach>
													</tr>
													<tr id="TableConnectionType">
														<th scope="row">연결타입</th>
														<c:forEach var="connection"
															items="${listCategoryConnectionType}">
															<c:if
																test="${item.connectionTypeCD eq connection.categorySeq}">
																<td>${connection.categoryKO}</td>
															</c:if>
															<c:if
																test="${competition1.connectionTypeCD eq connection.categorySeq}">
																<td>${connection.categoryKO}</td>
															</c:if>
															<c:if
																test="${competition2.connectionTypeCD eq connection.categorySeq}">
																<td>${connection.categoryKO}</td>
															</c:if>
														</c:forEach>
													</tr>
													<tr id="TableWeight">
														<th scope="row">무게(g)</th>
														<td>${item.productWeight}</td>
														<td>${competition1.productWeight}</td>
														<td>${competition2.productWeight}</td>
													</tr>
													<tr id="TableSize">
														<th scope="row">치수(mm)<br>
														<span style="font-size: 10px;">[가로/세로/높이]</span></th>
														<td style="line-height: 50px;">${item.productWidth}/${item.productLength}/${item.productHeight}</td>
														<td style="line-height: 50px;">${competition1.productWidth}/${competition1.productLength}/${competition1.productHeight}</td>
														<td style="line-height: 50px;">${competition2.productWidth}/${competition2.productLength}/${competition2.productHeight}</td>
													</tr>
													<tr id="TableFinalPrice">
														<th scope="row">구입가격</th>
														<td>${item.productPrice}￦</td>
														<td>${competition1.productPrice}￦</td>
														<td>${competition2.productPrice}￦</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shop Details Section End -->

	<section class="related spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h3 class="related-title">Related Product</h3>
				</div>
			</div>
			<div class="row">
				<c:choose>
					<c:when test="${fn:length(brandList) eq 0}">
						<div class="col-12">
							<p class="text-center">There are no data!</p>
						</div>
					</c:when>
					<c:otherwise>
						<c:forEach items="${brandList}" var="brandList" varStatus="status">
							<div
								class="col-lg-4 col-md-6 col-sm-6 d-flex justify-content-start">
								<div class="product__item"
									style="background-color: rgba(0, 0, 0, 0.1); width: 100%; margin-left: 15px;">
									<div class="product__item__pic set-bg"
										data-setbg="/resources/project1/img/product/product-2.jpg">
										<ul class="product__hover">
											<li><a href="#"><img
													src="/resources/project1/img/icon/heart.png" alt=""></a></li>
											<li><a
												href="/shopDetails?productSeq=${brandList.productSeq}&keyBrandCD=${brandList.brandCD}&keyFinalPrice=${brandList.productFinalPrice}"><img
													src="/resources/project1/img/icon/search.png" alt=""></a></li>
										</ul>
									</div>
									<div class="product__item__text">
										<h5>${brandList.productName}</h5>
										<h5 class="price">${brandList.productFinalPrice}원</h5>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			</form>
	</section>
	<!-- Related Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__logo">
							<a href="#"><img
								src="/resources/project1/img/footer-logo.png" alt=""></a>
						</div>
						<p>The customer is at the heart of our unique business model,
							which includes design.</p>
						<a href="#"><img src="/resources/project1/img/payment.png"
							alt=""></a>
					</div>
				</div>
				<div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
					<div class="footer__widget">
						<h6>Shopping</h6>
						<ul>
							<li><a href="#">Clothing Store</a></li>
							<li><a href="#">Trending Shoes</a></li>
							<li><a href="#">Accessories</a></li>
							<li><a href="#">Sale</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-6">
					<div class="footer__widget">
						<h6>Shopping</h6>
						<ul>
							<li><a href="#">Contact Us</a></li>
							<li><a href="#">Payment Methods</a></li>
							<li><a href="#">Delivary</a></li>
							<li><a href="#">Return & Exchanges</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
					<div class="footer__widget">
						<h6>NewLetter</h6>
						<div class="footer__newslatter">
							<p>Be the first to know about new arrivals, look books, sales
								& promos!</p>
							<form action="#">
								<input type="text" placeholder="Your email">
								<button type="submit">
									<span class="icon_mail_alt"></span>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="footer__copyright__text">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						<p>
							Copyright ©
							<script>
                                document.write(new Date().getFullYear());
                            </script>
							2020 All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
						</p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<%@ include file="../../include/P1link/jsPlugins.jsp"%>
	<!-- 카카오지도 -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	6509ee9ff8d2b2c5454e623a1c28aeb8&libraries=services"></script>
	<script type="text/javascript">
    $(document).ready(function(){
		setComment();
	  
	}); 
    var ssMemberSeq = '<c:out value="${sessionUserSeq}"/>'; 
    
    
    $("#btnSaveComment").on("click", function() {
        var commentScore = $("#commentScore").val();
        var commentText = $("#commentText").val().trim();
        $.ajax({
            async: true,
            cache: false,
            type: "post",
            url: "/saveComment",
            data: {
                "commentScore": commentScore,
                "commentText": commentText,
                "product_productSeq": ${item.productSeq},
                "member_memberSeq": ssMemberSeq
            },
            success: function(response) {
                if (response.rt == "success" && commentText != "") {
                    setCommentLast();
                } else {
                    alert("입력을 할 수 없습니다.");
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });

    });

    function setComment() {
        console.log("2");
        $.ajax({
            async: true,
            cache: false,
            type: "post",
            url: "/commentList",
            data: {
                "keyProduct_productSeq": ${item.productSeq},
            },
            success: function(response) {
                if (response.rt == "success") {
                    var a = response.listComment;
                    var score = 0;
                	var average = Math.floor(score / a.length); // 평균 점수를 계산
                    console.log("test4");
                    var commentItem = $("#comment_Item");
                    // 댓글 갯수 가져오는 식
                    var numberOfComments = a.length;
                    var tabText = $("#reviews").text();
                    var updatedTabText = tabText.replace(/\(\d+\)/, "(" + numberOfComments + ")");
                    $("#reviews").text(updatedTabText);
                    setReviewRating();
                    //별점 함수
                    function setReviewRating() {
                	    
                	    for (let i = 0; i < a.length; i++) {
                	        score += a[i].commentScore; // 각 댓글의 점수를 총 점수의 합
                	    }

                	    var average = Math.floor(score / a.length); // 평균 점수를 계산

                	    console.log("총 점수: " + score);
                	    console.log("총 코멘트 수: " + a.length);
                	    console.log("평균점수 : " + average);

                	    return setReviewRatingStars(average); // 계산된 평균을 이용하여 별점을 표시하는 함수를 호출
                	}

                	function setReviewRatingStars(rating) {
                	    var faStar = "<i class='fa fa-star'></i>";
                	    var stars = $("#rating"); 

                	    stars.empty(); // 이전 별점 초기화

                	    for (let j = 0; j < rating; j++) {
                	        stars.append(faStar+" "); // 평점에 따라 별을 추가
                	    }
                	    stars.append("<br>"+"평균 리뷰"+rating+"점");
                	}
                    for (let i = 0; i < a.length; i++) {
                        const commentText = a[i].commentText;
                        const commentScore = a[i].commentScore;
                        const commentRegDT = a[i].regDT;
                        const memberNickName = a[i].memberNickName;
                        const memberSeq = a[i].member_memberSeq;
                        const sessionUserSeq = ssMemberSeq
                        const commentSeq = a[i].commentSeq; // 댓글의 seq 추가
                        const date = new Date(commentRegDT);
                        var year = date.getFullYear();
                        var month = date.getMonth() + 1;
                        var day = date.getDate();
                        var time = date.getHours() + 9 + ":" + date.getMinutes();
                        var ymdt = year + "/" + month + "/" + day + " " + time;
                        var commentHtml = 
                            "<div class='comments shadow p-1 mb-2 bg-body-tertiary rounded'>" +
                                "<div class='comment'>" +
                                    "<div class='content'>" +
                                        "<header class='top'>" +
                                            "<div class='username'>" + memberNickName + "</div>" +
                                            "<div class='utility'>" +
                                                "<button type='button' id='commentDele' class='btn btnMenu commentDele d-none' data-commentseq='" + commentSeq + "'>삭제</button>" +
                                            "</div>" +
                                        "</header>" + scoreStar(commentScore) +
                                        "<p>" + commentText + "</p>" +
                                        "<ul class='bottom d-flex flex-row-reverse'>" +
                                            "<li class='menu time'>" + ymdt + "</li>" +
                                            "<li class='divider'></li>" +
                                        "</ul>" +
                                    "</div>" +
                                "</div>" +
                            "</div>";

                        if (sessionUserSeq == memberSeq) {
                            commentHtml = commentHtml.replace("d-none", ); 
                        }

                        commentItem.append(commentHtml);
                        
                    }

                    // 삭제 버튼 클릭 이벤트 처리
                    $(".commentDele").on("click", function() {
                        var commentSeq = $(this).data("commentseq"); 
                        
                    });
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });
    }



    function setCommentLast() {
        console.log("2");
        $.ajax({
            async: true,
            cache: false,
            type: "post",
            url: "/commentList",
            data: {
                "keyProduct_productSeq": ${item.productSeq},
            },
            success: function(response) {
            	var a = response.listComment; 
            	var numberOfComments = a.length;
                var tabText = $("#reviews").text();
                var updatedTabText = tabText.replace(/\(\d+\)/, "(" + numberOfComments + ")");
                 $("#reviews").text(updatedTabText);
                if (response.rt == "success") {
                    const commentText = a[a.length - 1].commentText.trim();
                    const commentScore = a[a.length - 1].commentScore;
                    const commentRegDT = a[a.length - 1].regDT;
                    const memberNickName = a[a.length - 1].memberNickName;
                    const memberSeq = a[a.length - 1].member_memberSeq;
                    const commentSeq = a[a.length - 1].commentSeq; // 댓글의 seq 추가
                    const date= new Date(commentRegDT);
                    var year = date.getFullYear();
                    var month = date.getMonth() + 1; 
                    var day = date.getDate();
                    var time = date.getHours()+9 + ":" + date.getMinutes();
                    var ymdt = year + "/" + month + "/" + day + " " + time; // 날짜와 시간을 띄어쓰기로 구분
                    
                    var commentHtml = 
                        "<div class='comments shadow p-1 mb-2 bg-body-tertiary rounded'>" +
                            "<div class='comment'>" +
                                "<div class='content'>" +
                                    "<header class='top'>" +
                                        "<div class='username'>" + memberNickName + "</div>" +
                                        "<div class='utility'>" +
                                        "<button type='button' id='commentDele' class='btn btnMenu commentDele' data-commentseq='" + commentSeq + "'>삭제</button>" +
                                        "</div>" +
                                    "</header>" +
                                    "<p>" + commentText + "</p>" +
                                    "<ul class='bottom'>" +
                                        "<li class='menu time'>" + ymdt + "</li>" +
                                        "<li class='divider'></li>" +
                                    "</ul>" +
                                "</div>" +
                            "</div>" +
                        "</div>";
                    $("#comment_Item").append(commentHtml);

                } else {
                	alert("댓글을 입력해주세요");
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });

    };

    function scoreStar(commentScore) {
        const comment_Item = $("#comment_Item");
        if (commentScore != 0 && commentScore != null) {

            switch (commentScore) {
                case 1:
                    return "★";
                case 2:
                    return "★★";
                case 3:
                    return "★★★";
                case 4:
                    return "★★★★";
                default:
                    return "★★★★★";
            }
        } else {
            // by pass
        }
        
    };
 $("#comment_Item").on("click", ".btnMenu", function() {
      var commentSeq = $(this).data("commentseq");
      var commentsDiv = $(this).closest(".comments");
		$.ajax({
	        async: true,
	        cache: false,
	        type: "post",
	        url: "/commentDele",
	        data: {
	            "commentSeq": commentSeq,
	            "member_memberSeq": ssMemberSeq
	        },
	        success: function(response) {
	            if (response.rt == "success") {
	            	commentsDiv.addClass("d-none");
            	  
	            } else {
	                alert("삭제 실패");
	            }
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	            alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	        }
	
 		});
	});
 
//모달
 $('#payment_btn').click(function(){
	 	 
    $('#testModal').modal("show");
    setModalVal();
    setTimeout(function() {
        var container = document.getElementById('map');
        var options = {
            center: new kakao.maps.LatLng(33.450701, 126.570667),
            level: 3
        };

        var map = new kakao.maps.Map(container, options);
        map.relayout();
    }, 500); // 500ms (0.5초) 후에 코드 실행
});

 
 document.getElementById("address_kakao").addEventListener("click", function() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            var address = data.address;
	            document.getElementById("address_kakao").value = address;
	            document.querySelector("input[name=address_detail]").focus();
	            
	            // 키워드로 장소를 검색합니다
	            searchPlaces(address);
	        }
	    }).open();
	});

	// 키워드 검색을 요청하는 함수입니다
	function searchPlaces(address) {
	    var ps = new kakao.maps.services.Places();
	    var keyword = address;
				console.log("어드레스 : "+address);
	    if (!address.replace(/^\s+|\s+$/g, '')) {
	        alert('키워드를 입력해주세요!');
	        return false;
	    }

	    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
	    ps.keywordSearch(keyword, placesSearchCB);
	}

	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {
        var x = data[0].x; // 가장 첫 번째 결과의 x 좌표
        var y = data[0].y; // 가장 첫 번째 결과의 y 좌표
        console.log(x, y);

        panTo(y, x);
    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
        alert('검색 결과가 존재하지 않습니다.');
    } else if (status === kakao.maps.services.Status.ERROR) {
        alert('검색 결과 중 오류가 발생했습니다.');
    }
}

function panTo(y, x) {
	var container = document.getElementById('map');
    var options = {
            center: new kakao.maps.LatLng(y, x),
            level: 3
        };
	var map = new kakao.maps.Map(container, options);
    var moveLatLon = new kakao.maps.LatLng(y, x);
    
    map.panTo(moveLatLon);
}
// 결제버튼 클릭시 모달창의 텍스트를 변화시키는 함수
function setModalVal() {
    var orderCount = $("#Quantity").val(); 
    var productPrice = ${item.productFinalPrice};
	var resultPrice = productPrice*orderCount;

    console.log("orderCount value test: " + orderCount);
    console.log("productPrice value test: " + productPrice);
    console.log("order value test: " + resultPrice);

    $("#orderQuantity").text(orderCount);
    $("#orderPrice").text(resultPrice+"원");
    
}
 $("#btnOrder").on("click", function(){
	 console.log("버튼");
    var orderCount = $("#Quantity").val(); 
    var productPrice = ${item.productFinalPrice};
	var resultPrice = productPrice*orderCount; 
	const productSeq = ${item.productSeq};
	const orderAddress = $("#address_kakao").val();
	const orderAddressDetails = $("#address_detail").val();
	 $.ajax({
	        async: true,
	        cache: false,
	        type: "post",
	        url: "/order/userOrder",
	        data: {
	            "orderCount": orderCount,
	            "orderAddress" : orderAddress,
	            "orderAddressDetails" : orderAddressDetails,
	            "orderPrice": resultPrice,
	            "memberSeq" : ssMemberSeq,
	            "productSeq" : productSeq
	        },
	        success: function(response) {
	            if (response.rt == "success") {
	            	alert('결제가 완료되었습니다.');
	            	$('#testModal').modal("hide");
	            } else {
	            	
	            }
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	            alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	        }
	
		});
	 
}
); 


    </script>

</body>

</html>