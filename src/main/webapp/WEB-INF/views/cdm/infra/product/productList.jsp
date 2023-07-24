<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="codeServiceImpl" class="com.crowmarket.app.infra.common.code.CodeServiceImpl"/>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>제품관리</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <%@ include file="../../include/csslink.jsp"%>
</head>

<body>

   <!-- ======= Header ======= -->
  <%@ include file="../../include/header.jsp"%>
  <!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <%@ include file="../../include/sidebar.jsp"%>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>제품관리</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item">Product</li>
          <li class="breadcrumb-item active">제품관리</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

  <section>
    <div class="card">
      <div class="card-body">
        <form  class="input-group input-group-sm mb-3 w-100 justify-content-end" name="formList">
        <div class="card-search">
          <fieldset disabled>
            <div class="input-group input-group-sm mb-3 w-25 inputseq">
              <span class="input-group-text" id="inputGroup-sizing-sm">Seq</span>
              <input type="text" class="form-control" placeholder="#">
            </div>
          </fieldset>
          <span class="input-group-text" id="inputGroup-sizing-sm">제품 타입</span>
          <select class="form-select-sm height : " >
            <option value="0">전체</option>
            <option value="1">키보드</option>
            <option value="2">마우스</option>
          </select>
          <span class="input-group-text" id="inputGroup-sizing-sm">연결 타입</span>
          <select class="form-select-sm height : " >
            <option value="0">전체</option>
            <option value="1">유선</option>
            <option value="2">무선</option>
          </select>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">브랜드</span>
            <input type="text" class="form-control">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">제품명</span>
            <input type="text" class="form-control">
          </div>
        </div>
        <div class="card-search">
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">높이(mm)</span>
            <input type="text" class="form-control">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">너비(mm)</span>
            <input type="text" class="form-control">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">길이(mm)</span>
            <input type="text" class="form-control">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">무게(g)</span>
            <input type="text" class="form-control">
          </div>
        </div>
        <div class="card-search">
            <span class="input-group-text" id="inputGroup-sizing-sm">텐키</span>
            <select class="form-select-sm height : " >
              <option value="0">전체</option>
              <option value="1">O</option>
              <option value="2">X</option>
            </select>
            <div class="input-group input-group-sm mb-3 w-25">
              <span class="input-group-text" id="inputGroup-sizing-sm">가격(￦)</span>
              <input type="text" class="form-control">
            </div>
            <div class="input-group input-group-sm mb-3 w-25">
              <span class="input-group-text" id="inputGroup-sizing-sm">등록일</span>
              <input type="date" class="form-control">
            </div>
            <div class="btn-box d-grid gap-2 d-md-flex justify-content-md-end">
              <button class="btn btn-secondary" type="button"><i class="bi bi-search"></i></button>
              <button class="btn btn-success" type="button"><i class="bi bi-arrow-counterclockwise"></i></button>
            </div>
        </div>
       </form>
        </div>
       </div>
        
        <!-- Table with stripped rows -->
        
        <!-- End Table with stripped rows -->
  </section>

  </main><!-- End #main -->



  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>Crow_Market</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

 <%@ include file="../../include/jslink.jsp"%>
  <!-- 체크박스쿼리 -->
  

</body>

</html>