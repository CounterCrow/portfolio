<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
  <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   <!-- Offcanvas Menu Begin -->
   <div class="offcanvas-menu-overlay"></div>
   <div class="offcanvas-menu-wrapper">
       <div class="offcanvas__option">
			<c:choose>
				<c:when test="${not empty sessionUserId }">
					<c:out value="${sessionUserNickName }"/>
					<a href="/userLogout">로그아웃</a>	
				</c:when>
				<c:otherwise>
				<div class="offcanvas__links">
	               <a href="userLogin">Sign in</a>
	               <a href="/signUp">Sign up</a>
         		</div>
				</c:otherwise>
			</c:choose>
           <div class="offcanvas__top__hover">
               <span>KR<i class="arrow_carrot-down"></i></span>
               <ul>
                   <li>KR</li>
                   <li>USD</li>
               </ul>
           </div>
       </div>
       <div class="offcanvas__nav__option">
           <a href="#" class="search-switch"><img src="/resources/projact1/img/icon/search.png" alt=""></a>
           <a href="#"><img src="/resources/projact1" alt=""></a>
       </div>
       <div id="mobile-menu-wrap"></div>
   </div>
   <!-- Offcanvas Menu End -->

   <!-- Header Section Begin -->
   <header class="header">
       <div class="header__top">
           <div class="container">
               <div class="row">
                   <div class="col-lg-6 col-md-7">
                   </div>
                   <div class="col-lg-6 col-md-5">
                       <div class="header__top__right">
                           <c:choose>
								<c:when test="${not empty sessionUserId }">
									<c:out value="${sessionUserNickName }"/>
									<a href="/userLogout">로그아웃</a>	
								</c:when>
								<c:otherwise>
								<div class="offcanvas__links">
					               <a href="userLogin">Sign in</a>
					               <a href="/signUp">Sign up</a>
				         		</div>
								</c:otherwise>
							</c:choose>
                           <div class="header__top__hover">
                               <span>KR<i class="arrow_carrot-down"></i></span>
                               <ul>
                                   <li>KR</li>
                                   <li>USD</li>
                               </ul>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </div>
       <div class="container">
           <div class="row">
               <div class="col-lg-3 col-md-3">
                   <div class="header__logo">
                       <a href="./index.html"><h3>CrowMarket</h3></a>
                   </div>
               </div>
               <div class="col-lg-6 col-md-6">
                   <nav class="header__menu mobile-menu">
                       <ul>
                           <li class="active"><a href="projact01">Home</a></li>
                           <li><a href="shop">Shop</a></li>
                           <li><a href="#">Pages</a>
                               <ul class="dropdown">
                                   <li><a href="./about.html">About Us</a></li>
                                   <li><a href="./shopping-cart.html">Shopping Cart</a></li>
                                   <li><a href="./checkout.html">Check Out</a></li>
                                   <li><a href="./blog-details.html">Blog Details</a></li>
                               </ul>
                           </li>
                           <li><a href="./blog.html">Blog</a></li>
                           <li><a href="./contact.html">Contacts</a></li>
                       </ul>
                   </nav>
               </div>
               <div class="col-lg-3 col-md-3">
                   <div class="header__nav__option">
                       <a href="#"><img src="/resources/projact1" alt=""></a>
                   </div>
               </div>
           </div>
           <div class="canvas__open"><i class="fa fa-bars"></i></div>
       </div>
   </header>
   <!-- Header Section End -->