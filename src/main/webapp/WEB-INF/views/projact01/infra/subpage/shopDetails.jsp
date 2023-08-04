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
<style>
#comment_Item p{
color:black;
text-align: center;
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
                            <a href="./index">Home</a>
                            <a href="./shopList">Shop</a>
                            <span>Product Details</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="/resources/projact1/img/shop-details/thumb-1.png">
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="/resources/projact1/img/shop-details/thumb-2.png">
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="/resources/projact1/img/shop-details/thumb-3.png">
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="/resources/projact1/img/shop-details/thumb-4.png">
                                        <i class="fa fa-play"></i>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-6 col-md-9">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="/resources/projact1/img/shop-details/product-big-2.png" alt="">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="/resources/projact1/img/shop-details/product-big-3.png" alt="">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="/resources/projact1/img/shop-details/product-big.png" alt="">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-4" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="/resources/projact1/img/shop-details/product-big-4.png" alt="">
                                    <a href="https://www.youtube.com/watch?v=8PJ3_p7VqHw&list=RD8PJ3_p7VqHw&start_radio=1" class="video-popup"><i class="fa fa-play"></i></a>
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
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                                <span> - 5 Reviews</span>
                            </div>
                            <c:choose>
                            <c:when test="${item.productPrice == item.productFinalPrice}">
                            <h3><fmt:formatNumber type="currency" value="${item.productPrice}" /></h3>
                            </c:when>
                            <c:otherwise>
                            <h3><fmt:formatNumber type="currency" value="${item.productFinalPrice}" /><span><fmt:formatNumber type="currency" value="${item.productPrice}" /></span></h3>
                            </c:otherwise>
                            </c:choose>
                            <p>Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable
                                cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening
                            with placket.</p>
                            <div class="product__details__option">
                                <div class="product__details__option__keytype">
                                    <span>축 교환:</span>
                                    <c:forEach var="switchType" items="${listCategorySwitchType}">
                                    <label for="type${switchType.categoryOrder}">${switchType.categoryKO}
                                        <input type="radio" id="type${switchType.categoryOrder}">
                                    </label>
                                    </c:forEach>
                                </div>
                                <div class="product__details__option__color">
                                    <span>Color:</span>
                                    <label class="c-1" for="sp-1">
                                        <input type="radio" id="sp-1">
                                    </label>
                                    <label class="c-9" for="sp-2">
                                        <input type="radio" id="sp-2">
                                    </label>
                                </div>
                            </div>
                            <div class="product__details__cart__option">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1">
                                    </div>
                                </div>
                                <a href="#" class="primary-btn">결제하기</a>
                            </div>
                            <div class="product__details__btns__option">
                                <a href="#"><i class="fa fa-heart"></i> add to wishlist</a>
                            </div>
                            <div class="product__details__last__option">
                                <h5><span>Guaranteed Safe Checkout</span></h5>
                                <ul>
                                    <li><span>SKU:</span> 3812912</li>
                                    <li><span>Categories:</span> Clothes</li>
                                    <li><span>Tag:</span>Clothes, Skin, Body</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product__details__tab">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#tabs-5"
                                    role="tab">Description</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tabs-6" role="tab">Customer
                                    Previews(5)</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tabs-7" role="tab">다른 제품과 비교</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tabs-5" role="tabpanel">
                                    <div class="product__details__tab__content">
                                        <p class="note">Nam tempus turpis at metus scelerisque placerat nulla deumantos
                                            solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis
                                            ut risus. Sedcus faucibus an sullamcorper mattis drostique des commodo
                                        pharetras loremos.</p>
                                        <div class="product__details__tab__content__item">
                                            <h5>Products Infomation</h5>
                                               
                                        
                                        </div>
                                        <div class="product__details__tab__content__item">
                                            <h5>Material used</h5>
                                            <p>Polyester is deemed lower quality due to its none natural quality’s. Made
                                                from synthetic materials, not natural like wool. Polyester suits become
                                                creased easily and are known for not being breathable. Polyester suits
                                                tend to have a shine to them compared to wool and cotton suits, this can
                                                make the suit look cheap. The texture of velvet is luxurious and
                                                breathable. Velvet is a great choice for dinner party jacket and can be
                                            worn all year round.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tabs-6" role="tabpanel">
                                    <div class="product__details__tab__content">
                                    	<div id="comment_Item"  style="width:100%;height:100%;background-color: rgba(0,0,0,0.1); margin:auto;">
                                    	                              	
                                    	</div>
                                        <div class="product__details__tab__content__item">
                                          Reviews
                                        </div>
                                  <form name="commentForm" id="commentForm">
                                        <select class="form-select" id="commentScore" name="commentScore">
                                            <option value="5">★★★★★</option>
                                            <option value="4">★★★★</option>
                                            <option value="3">★★★</option>
                                            <option value="2">★★</option>
                                            <option value="1">★</option>
                                          </select>
                                          <div class="input-group-lg d-flex justify-content-end">
                                            <input type="text" class="form-control" aria-label="Text input" id="commentText">
                                            <button type="button" class="btn btn-outline-secondary col-lg-3"  id="btnSaveComment">등록</button>
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
                                                    <th scope="col"><input type="text" class="w-50"><button id="Competition_item_search" data-bs-toggle="modal" data-bs-target="#Modal"><img src="/resources/projact1/img/icon/search.png" alt=""></button></th>
                                                  </tr>
                                                </thead>
                                                
                                            <div class="modal fade" id="testModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                      <div class="modal-header">
                                                        <h4 class="modal-title" id="myModalLabel">모달 제목</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                      </div>
                                                      <div class="modal-body">
                                                        <div class="row">
                                                          <div class="col">
                                                            <select class="form-select">
                                                              <option selected>선택하세요</option>
                                                              <option value="option1">옵션 1</option>
                                                              <option value="option2">옵션 2</option>
                                                              <option value="option3">옵션 3</option>
                                                            </select>
                                                          </div>
                                                          <div class="col">
                                                            <select class="form-select">
                                                              <option selected>선택하세요</option>
                                                              <option value="option1">옵션 1</option>
                                                              <option value="option2">옵션 2</option>
                                                              <option value="option3">옵션 3</option>
                                                            </select>
                                                          </div>
                                                          <div class="col">
                                                            <select class="form-select">
                                                              <option selected>선택하세요</option>
                                                              <option value="option1">옵션 1</option>
                                                              <option value="option2">옵션 2</option>
                                                              <option value="option3">옵션 3</option>
                                                            </select>
                                                          </div>
                                                        </div>
                                                        <div class="row mt-3">
                                                          <div class="col">
                                                            <input type="text" class="form-control" placeholder="검색어 입력">
                                                          </div>
                                                          <div class="col">
                                                            <button type="button" class="btn btn-primary">검색</button>
                                                          </div>
                                                        </div>
                                                        <div class="row mt-3">
                                                          <div class="col">
                                                            <div id="searchResults"></div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                      <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                                                        <button type="button" class="btn btn-primary">저장</button>
                                                      </div>
                                                    </div>
                                                  </div>
                                            </div>
                                                <tbody>
                                                  <tr>
                                                    <th scope="row">제품명</th>
                                                    <td>${item.productName}</td>
                                                    <td>비교품1</td>
                                                    <td>비교품2</td>
                                                    <td>------</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">브랜드</th>
                                                    <c:forEach var="brand" items="${listCategoryBrand}">
                                                    <c:if test="${item.brandCD == brand.categorySeq}">
                                                    <td>${brand.categoryKO}</td>
                                                    </c:if>
                                                    </c:forEach>
                                                    <td>비교품1</td>
                                                    <td>비교품2</td>
                                                    <td>------</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">용도</th>
                                                    <c:forEach var="purpose" items="${listCategoryPurposeType}">
                                                    <c:if test="${item.purposeCD == purpose.categorySeq}">
                                                    <td>${purpose.categoryKO}</td>
                                                    </c:if>
                                                    </c:forEach>
                                                    <td>O</td>
                                                    <td>O</td>
                                                    <td>------</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">키보드배열</th>
                                                 <c:forEach var="itemArray" items="${listCategoryArrangementType}">
												    <c:if test="${item.productArrangementCD eq itemArray.categorySeq}">
												        <td>${itemArray.categoryKO}</td>
												    </c:if>
												</c:forEach>
                                                    <td>기계식</td>
                                                    <td>기계식</td>
                                                    <td>------</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">연결타입</th>
                                                     <c:forEach var="connection" items="${listCategoryConnectionType}">
												    <c:if test="${item.connectionTypeCD eq connection.categorySeq}">
												        <td>${connection.categoryKO}</td>
												    </c:if>
													</c:forEach>
                                                    <td>무선+유선</td>
                                                    <td>무선</td>
                                                    <td>------</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">무게(g)</th>
                                                    <td>${item.productWeight}</td>
                                                    <td>970</td>
                                                    <td>1777</td>
                                                    <td>------</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">치수(mm)<br><span style="font-size: 10px;">[가로/세로/높이]</span></th>
                                                    <td style="line-height: 50px;">${item.productWidth}/${item.productLength}/${item.productHeight}</td>
                                                    <td style="line-height: 50px;">111/111/111</td>
                                                    <td style="line-height: 50px;">111/111/111</td>
                                                    <td style="line-height: 50px;">------</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">색상지원</th>
                                                    <td>RGB/1680</td>
                                                    <td>RGB/1680</td>
                                                    <td>RGB/1680</td>
                                                    <td>------</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">구입가격</th>
                                                    <td>${item.productPrice}￦</td>
                                                    <td>150,000￦</td>
                                                    <td>150,000￦</td>
                                                    <td>------</td>
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
                <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="/resources/projact1/img/product/product-1.jpg">
                            <span class="label">New</span>
                            <ul class="product__hover">
                                <li><a href="#"><img src="/resources/projact1/img/icon/heart.png" alt=""></a></li>
                                
                                <li><a href="#"><img src="/resources/projact1/img/icon/search.png" alt=""></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6>Piqué Biker Jacket</h6>
                           
                            <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5>$67.24</h5>
                            <div class="product__color__select">
                                <label for="pc-1">
                                    <input type="radio" id="pc-1">
                                </label>
                                <label class="active black" for="pc-2">
                                    <input type="radio" id="pc-2">
                                </label>
                                <label class="grey" for="pc-3">
                                    <input type="radio" id="pc-3">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="/resources/projact1/img/product/product-2.jpg">
                            <ul class="product__hover">
                                <li><a href="#"><img src="/resources/projact1/img/icon/heart.png" alt=""></a></li>
                                
                                <li><a href="#"><img src="/resources/projact1/img/icon/search.png" alt=""></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6>Piqué Biker Jacket</h6>
                           
                            <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5>$67.24</h5>
                            <div class="product__color__select">
                                <label for="pc-4">
                                    <input type="radio" id="pc-4">
                                </label>
                                <label class="active black" for="pc-5">
                                    <input type="radio" id="pc-5">
                                </label>
                                <label class="grey" for="pc-6">
                                    <input type="radio" id="pc-6">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                    <div class="product__item sale">
                        <div class="product__item__pic set-bg" data-setbg="/resources/projact1/img/product/product-3.jpg">
                            <span class="label">Sale</span>
                            <ul class="product__hover">
                                <li><a href="#"><img src="/resources/projact1/img/icon/heart.png" alt=""></a></li>
                                
                                <li><a href="#"><img src="/resources/projact1/img/icon/search.png" alt=""></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6>Multi-pocket Chest Bag</h6>
                           
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5>$43.48</h5>
                            <div class="product__color__select">
                                <label for="pc-7">
                                    <input type="radio" id="pc-7">
                                </label>
                                <label class="active black" for="pc-8">
                                    <input type="radio" id="pc-8">
                                </label>
                                <label class="grey" for="pc-9">
                                    <input type="radio" id="pc-9">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="/resources/projact1/img/product/product-4.jpg">
                            <ul class="product__hover">
                                <li><a href="#"><img src="/resources/projact1/img/icon/heart.png" alt=""></a></li>
                                
                                <li><a href="#"><img src="/resources/projact1/img/icon/search.png" alt=""></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6>Diagonal Textured Cap</h6>
                           
                            <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5>$60.9</h5>
                            <div class="product__color__select">
                                <label for="pc-10">
                                    <input type="radio" id="pc-10">
                                </label>
                                <label class="active black" for="pc-11">
                                    <input type="radio" id="pc-11">
                                </label>
                                <label class="grey" for="pc-12">
                                    <input type="radio" id="pc-12">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
                            <a href="#"><img src="/resources/projact1/img/footer-logo.png" alt=""></a>
                        </div>
                        <p>The customer is at the heart of our unique business model, which includes design.</p>
                        <a href="#"><img src="/resources/projact1/img/payment.png" alt=""></a>
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
                            </script>
                            2020
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
    $(document).ready(function(){
		console.log("1");
    	setComment();

	}); 
    
    $("#btnSaveComment").on("click", function(){
		var commentScore = $("#commentScore").val();
    	var commentText = $("#commentText").val();
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/saveComment"
			,data : { 
				"commentScore" : commentScore,
				"commentText" : commentText,
				"product_productSeq" : ${item.productSeq},
				"member_memberSeq" : ${sessionUserSeq}
			}
			,success: function(response) {
				if(response.rt == "success") {
					if(response.rt == "success") {
						setCommentLast();
					} else {
						alert("댓글등록 실패");
					}
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		
	});
    // 댓글 호출
     function setComment(){
    	 console.log("2");
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/commentList"
			,data : { 
				"keyProduct_productSeq" : ${item.productSeq},
			}
			,success: function(response) {
				if(response.rt == "success") {
					var a = response.listComment;
						console.log("test4");
					const comment_Item = $("#comment_Item");

					for (let i = 0; i < a.length; i++) {
					    const commentText = a[i].commentText;
					    comment_Item.append("<div><p>" + commentText + "</p></div>");
					}
					} else {
						console.log("test5");
					}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		
	};
	 function setCommentLast(){
    	 console.log("2");
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/commentList"
			,data : { 
				"keyProduct_productSeq" : ${item.productSeq},
			}
			,success: function(response) {
				if(response.rt == "success") {
					var a = response.listComment;
					const comment_Item = $("#comment_Item");
				    const commentText = a[a.length-1].commentText;
					    comment_Item.append("<div><p>" + commentText + "</p></div>");
					} else {
				//		by pass
					}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		
	};
    </script>
    
</body>

</html>