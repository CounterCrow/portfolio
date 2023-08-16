<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="../../include/config/jstl.jsp"%>
<%@ include file="../../include/config/userTags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="description" content="CrowMarket">
    <meta name="keywords" content="CrowMarket, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Crow_Market</title>
<%@ include file="../../include/P1link/projact1CSS.jsp"%>
</head>
<body>
<%@ include file="../../include/config/header.jsp"%>
 <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Payment</h4>
                        <div class="breadcrumb__links">
                            <a href="./index">Home</a>
                            <a href="./shop">Shop</a>
                            <span>Payment</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
             <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <form action="#">
                    <div class="row">
                        <div class="col-lg-8 float-start" style="background-color: rgba(0,0,0,0.1);">
                           <div class="col-lg " style="background-color: rgba(255,0,0,0.1);">
                           <div id="img_box" Style="width: 300px; height: 300px; background-color: rgba(0,255,0,0.1);"></div>
                           <div><span>상품명</span></div>
                           	
                           </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4 class="order__title">Your order</h4>
                                <div class="checkout__order__products">Product <span>Total</span></div>
                                <ul class="checkout__total__products">
                                    <li>01. Vanilla salted caramel <span>$ 300.0</span></li>
                                    <li>02. German chocolate <span>$ 170.0</span></li>
                                    <li>03. Sweet autumn <span>$ 170.0</span></li>
                                    <li>04. Cluten free mini dozen <span>$ 110.0</span></li>
                                </ul>
                                <ul class="checkout__total__all">
                                    <li>Subtotal <span>$750.99</span></li>
                                    <li>Total <span>$750.99</span></li>
                                </ul>
                                <button type="submit" class="site-btn">PLACE ORDER</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
<%@ include file="../../include/P1link/jsPlugins.jsp"%>
</body>
</html>