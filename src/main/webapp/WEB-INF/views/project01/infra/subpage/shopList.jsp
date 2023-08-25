<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="../../include/config/jstl.jsp"%>
<%@ include file="../../include/config/userTags.jsp"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Crow_Market</title>

  <%@ include file="../../include/P1link/project1CSS.jsp"%>
  
</head>

<body>
   <jsp:include page="../../include/config/header.jsp">
    <jsp:param name="navShop" value="active" />
</jsp:include>
   <!-- Header Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Shop</h4>
                        <div class="breadcrumb__links">
                            <a href="project01">Home</a>
                            <span>Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
    <form name="sort">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="shop__sidebar">
                        <div class="shop__sidebar__accordion">
                            <div class="accordion" id="accordion">
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">Categories</a>
                                    </div>
                                    <!-- 정렬 조건 히든 박스 -->
                                           <input style="display: none" id="sortCD" type="text" value=""></input>
                                           <input style="display: none" id="sortGroupCD" type="text" value=""></input> 
                                    <!-- end -->
                                    <div id="collapseOne" class="collapse show" data-parent="#accordion">
                                        <div class="card-body">
                                            <div class="shop__sidebar__categories">
                                                <ul class="nice-scroll">
                                                    <li><a id="selectKeyboard" data-value="2" data-group="1">키보드 (${fn:length(list)})</a></li>
                                                    <li><a id="selectMouse" data-value="3" data-group="1">마우스 (53)</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseTwo">Theme</a>
                                    </div>
                                    <div id="collapseTwo" class="collapse show" data-parent="#accordion">
                                        <div class="card-body">
                                            <div class="shop__sidebar__brand" id="useType">
                                                <ul>
                                                    <li><a id="selectGaming" data-value="11" data-group="9">게이밍</a></li>
                                                    <li><a id="selectOffice" data-value="10" data-group="9">사무용</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseThree">Branding</a>
                                    </div>
                                    <div id="collapseThree" class="collapse show" data-parent="#accordion">
                                        <div class="card-body">
                                            <div class="shop__sidebar__brand">
                                                <ul>
                                                    <li><a id="selectBrand1" data-value="6" data-data-group="5">앱코</a></li>
                                                    <li><a id="selectBrand2" data-value="7" data-data-group="5">로지텍</a></li>
                                                    <li><a id="selectBrand3" data-value="25" data-data-group="5">해커</a></li>
                                                    <li><a id="selectBrand4" data-value="26" data-data-group="5">커세어</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFour">LinkType</a>
                                    </div>
                                    <div id="collapseFour" class="collapse show" data-parent="#accordion">
                                        <div class="card-body">
                                            <div class="shop__sidebar__LinkType">
                                                <ul>
                                                    <li><a id="selectLink1" data-value="13" data-group="12">유선</a></li>
                                                    <li><a id="selectLink2" data-value="14" data-group="12">무선</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFive">Filter Price</a>
                                    </div>
                                    <div id="collapseFive" class="collapse show" data-parent="#accordion">
                                        <div class="card-body">
                                            <div class="shop__sidebar__price">
                                                <ul>
                                                    <li><input type="text" class="w-50 form-control-sm selectPrice" id="lowprice" placeholder="최소가격"></li>
                                                    <li><input type="text" class="w-50 form-control-sm selectPrice" id="highprice" placeholder="최대가격"></li>
                                                    <li><button type="button" class="btn btn-secondary">검색</button></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseSix">Star</a>
                                    </div>
                                    <div id="collapseSix" class="collapse show" data-parent="#accordion">
                                        <div class="card-body">
                                            <div class="shop__sidebar__star">
                                                <ul>
                                                    <li><a id="selectReview1">★</a></li>
                                                    <li><a id="selectReview2">★★</a></li>
                                                    <li><a id="selectReview3">★★★</a></li>
                                                    <li><a id="selectReview4">★★★★</a></li>
                                                    <li><a id="selectReview5">★★★★★</a></li>
                                                </ul>
                                            </div>  
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseEight">BordType</a>
                                    </div>
                                    <div id="collapseEight" class="collapse show" data-parent="#accordion">
                                        <div class="card-body">
                                            <div class="shop__sidebar__tags">
                                                <a id="selectFullkey" data-value="17" data-group="16">풀배열</a>
                                                <a id="selectTenkeyless" data-value="18" data-group="16">텐키리스</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseNine">MouseType</a>
                                    </div>
                                    <div id="collapseNine" class="collapse show" data-parent="#accordion">
                                        <div class="card-body">
                                            <div class="shop__sidebar__tags">
                                                <a id="selectNomalMouse">일반</a>
                                                <a id="selectVerticalMouse">버티컬</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="shop__product__option">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__left">
                                    <p>Showing 1–6 of ${fn:length(list)} results</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__right">
                                    <p>정렬:</p>
                                    <select>
                                        <option id="sortPrice_ASC">높은 가격순</option>
                                        <option id="sortPrice_DESC">낮은 가격순</option>
                                        <option id="sortHits_ASC">높은 추천순</option>
                                        <option id="sortHits_DESC">낮은 추천순</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
<!-- -------------------------------------------------------------------------------------- -->     
                 <div class="row">
				    <c:choose>
				        <c:when test="${fn:length(list) eq 0}">
				            <div class="col-12">
				                <p class="text-center">There are no data!</p>
				            </div>
				        </c:when>
				        <c:otherwise>
				            <c:forEach items="${list}" var="item" varStatus="status">
				                <c:if test="${status.index % 3 == 0}">
				                    <div class="w-100"></div><!-- 3개마다 행 바꾸기 위해 추가한 부분 -->
				                </c:if>
				                <div class="col-lg-4 col-md-6 col-sm-6 d-flex justify-content-start">
				                    <div class="product__item" style="background-color: rgba(0,0,0,0.1); width:100%; margin-left: 15px;">
				                        <div class="product__item__pic set-bg" data-setbg="/resources/project1/img/product/product-2.jpg">
				                            <ul class="product__hover">
				                                <li><a href="#"><img src="/resources/project1/img/icon/heart.png" alt=""></a></li>
				                                <li><a href="/shopDetails?productSeq=${item.productSeq}&keyBrandCD=${item.brandCD}&keyFinalPrice=${item.productFinalPrice}"><img src="/resources/project1/img/icon/search.png" alt=""></a></li>
				                            </ul>
				                        </div>
				                        <div class="product__item__text">
				                            <h5>${item.productName}</h5>
				                            <h5 class="price">${item.productFinalPrice}원</h5>
				                        </div>
				                    </div>
				                </div>
				                <c:if test="${status.index % 3 == 2 || status.index == fn:length(list) - 1}">
				                    <div class="w-100"></div><!-- 3개마다 행 바꾸기 위해 추가한 부분 -->
				                </c:if>
				            </c:forEach>
				        </c:otherwise>
				    </c:choose>
				</div>
<!-- ------------------------------------------------------------------------------------------------------ -->                   
                </div>
            </div>
        </div>
        </form>
    </section>
    <!-- Shop Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <p>The customer is at the heart of our unique business model, which includes design.</p>
                        <a href="#"><img src="img/payment.png" alt=""></a>
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
                            <p>Be the first to know about new arrivals, look books, sales & promos!</p>
                            <form action="#">
                                <input type="text" placeholder="Your email">
                                <button type="submit"><span class="icon_mail_alt"></span></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="footer__copyright__text">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright ©
                            <script>
                                document.write(new Date().getFullYear());
                            </script>2020
                            All rights reserved | This template is made with <i class="fa fa-heart-o"
                            aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        </p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search End -->

    <!-- Js Plugins -->
   <%@ include file="../../include/P1link/jsPlugins.jsp"%>
  <script type="text/javascript">
    // 카테고리 검색 정렬
    // "select" 관련 <a> 태그 클릭 이벤트 처리
    var keySort = $("#sortCD").val();
    var keySortGroupCD = $("#sortGroupCD").val();

    $("[id^='select']").click(function() {
        const selectedValue = $(this).data("value");
        const selectedGroupCD = $(this).data("group");
        setSortValue(selectedValue);
        setSortGroupCD(selectedGroupCD);
    });


    $("[id^='sort']").click(function() {
        const selectedValue = $(this).data("value");
        const selectedGroupCD = $(this).data("group");
        setSortValue(selectedValue);
        setSortGroupCD(selectedGroupCD);
    });

 // 값을 "d-none" 인풋 박스에 설정하는 함수
    function setSortValue(data) {
        // 해당 인풋 요소를 찾고 값을 설정
        $("#sortCD").val(data);
        keySort = data; // keySort 값을 업데이트
        
    }
    function setSortGroupCD(data2) {
        // 해당 인풋 요소를 찾고 값을 설정
        $("#sortGroupCD").val(data2);
        keySortGroupCD = data2; // keySort 값을 업데이트
    }
    function sortAjax(){
    	$.ajax({
	        async: true,
	        cache: false,
	        type: "post",
	        url: "/sortCategory",
	        data: {
	            "keySortCD": keySort,
	            "keySortGroupCD": keySortGroupCD
	        },
	        success: function(response) {
	            if (response.rt == "success") {
            	  console.log("성공적");
            	  console.log(sort);
	            } else {
	            	console.log("까비");
	            }
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	            alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	        }
	
 		});
    }
</script>

</body>

</html>