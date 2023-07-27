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

  <%@ include file="../../include/P1link/projact1CSS.jsp"%>
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
                            <a href="projact01">Home</a>
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
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="shop__sidebar">
                        <div class="shop__sidebar__search">
                            <form action="#">
                                <input type="text" placeholder="Search...">
                                <button type="submit"><span class="icon_search"></span></button>
                            </form>
                        </div>
                        <div class="shop__sidebar__accordion">
                            <div class="accordion" id="accordion">
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">Categories</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordion">
                                        <div class="card-body">
                                            <div class="shop__sidebar__categories">
                                                <ul class="nice-scroll">
                                                    <li><a href="#">키보드 (53)</a></li>
                                                    <li><a href="#">마우스 (53)</a></li>
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
                                            <div class="shop__sidebar__brand">
                                                <ul>
                                                    <li><a href="#">gaming</a></li>
                                                    <li><a href="#">office</a></li>
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
                                                    <li><a href="#">앱코</a></li>
                                                    <li><a href="#">로지텍</a></li>
                                                    <li><a href="#">해커</a></li>
                                                    <li><a href="#">커세어</a></li>
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
                                                    <li><a href="#">유선</a></li>
                                                    <li><a href="#">무선</a></li>
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
                                                    <li><a href="#">★</a></li>
                                                    <li><a href="#">★★</a></li>
                                                    <li><a href="#">★★★</a></li>
                                                    <li><a href="#">★★★★</a></li>
                                                    <li><a href="#">★★★★★</a></li>
                                                </ul>
                                            </div>  
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseSeven">KeyType</a>
                                    </div>
                                    <div id="collapseSeven" class="collapse show" data-parent="#accordion">
                                        <div class="card-body">
                                            <div class="shop__sidebar__tags">
                                                <a href="#">일반</a>
                                                <a href="#">기계식</a>
                                                <a href="#">멤브레인</a>
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
                                                <a href="#">풀배열</a>
                                                <a href="#">텐키리스</a>
                                                <a href="#">인체공학</a>
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
                                                <a href="#">일반</a>
                                                <a href="#">버티컬</a>
                                                <a href="#">왼손용</a>
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
                                    <p>Showing 1–12 of 126 results</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__right">
                                    <p>정렬:</p>
                                    <select>
                                        <option value="">높은 가격순</option>
                                        <option value="">낮은 가격순</option>
                                        <option value="">높은 추천순</option>
                                        <option value="">낮은 추천순</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-6 col-sm-6 d-flex justify-content-start">
<!-- -------------------------------------------------------------------------------------- -->     
                <c:choose>
				<c:when test="${fn:length(listProductAll) eq 0}">
					<tr>
						<td class="text-center" colspan="9">There are no data!</td>
					</tr>	
				</c:when>
				<c:otherwise>
					<c:forEach items="${listProductAll}" var="listProductAll" varStatus="status">
                            <div class="product__item" style="background-color: rgba(0,0,0,0.1); width:800px;">
                                <div class="product__item__pic set-bg" data-setbg="/resources//projact1/img/product/product-2.jpg">
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="/resources/projact1/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="/shopDetails?productSeq=<c:out value="${listProductAll.productSeq}"></c:out>"><img src="/resources/projact1/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><c:out value="${listProductAll.productName}"></c:out></h6>
                                  
                                    <h5 class="price"><c:out value="${listProductAll.productFinalPrice}"></c:out></h5>
                                    
                                </div>
                            </div>
                   		  </c:forEach>
                   	</c:otherwise>
                    </c:choose>
<!-- ------------------------------------------------------------------------------------------------------ -->                   
                        </div>
                </div>
            </div>
        </div>
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
</body>

</html>