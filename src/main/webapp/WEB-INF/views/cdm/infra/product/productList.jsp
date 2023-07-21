<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
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
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="admin" class="logo d-flex align-items-center">
        <span class="d-none d-lg-block">Admin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div>
    <!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->
        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="/resources/admin/assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">로그인한 사람 이름</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>Kevin Anderson</h6>
              <span>Web Designer</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>Need Help?</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="portfolioLogin">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

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
        </div>
       </div>
        
        <!-- Table with stripped rows -->
        <table class="datatable table-striped ">
          <thead>
            <tr>
              <th scope="col" class="doNotScript">
                <input type="checkbox" name="checked" id="allCheck" value="">
              </th>
              <th scope="col">#</th>
              <th scope="col">ID</th>
              <th scope="col">Name</th>
              <th scope="col">Email</th>
              <th scope="col">Phone</th>
              <th scope="col">regDate</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="col" class="doNotScript">
                <input type="checkbox" name="checked" id="Check" value="">
              </th>
              <th scope="row">1</th>
              <td>admin01</td>
              <td>홍길동</td>
              <td>5555@naver.com</td>
              <td>010-5555-1221</td>
              <td>2016-05-25</td>
            </tr>
            <tr>
              <th scope="col" class="doNotScript">
                <input type="checkbox" name="checked" id="Check" value="">
              </th>
              <th scope="row">2</th>
              <td>user01</td>
              <td>홍길동</td>
              <td>4444@naver.com</td>
              <td>010-4444-1221</td>
              <td>2014-12-05</td>
            </tr>
            <tr>
              <th scope="col" class="doNotScript">
                <input type="checkbox" name="checked" id="Check" value="">
              </th>
              <th scope="row">3</th>
              <td>user02</td>
              <td>다길동</td>
              <td>3333@naver.com</td>
              <td>010-3333-1221</td>
              <td>2011-08-12</td>
            </tr>
            <tr>
              <th scope="col" class="doNotScript">
                <input type="checkbox" name="checked" id="Check" value="">
              </th>
              <th scope="row">4</th>
              <td>user03</td>
              <td>나길동</td>
              <td>1111@naver.com</td>
              <td>010-2222-1221</td>
              <td>2012-06-11</td>
            </tr>
            <tr>
              <th scope="col" class="doNotScript">
                <input type="checkbox" name="checked" id="Check" value="">
              </th>
              <th scope="row">5</th>
              <td>user04</td>
              <td>강길동</td>
              <td>2222@naver.com</td>
              <td>010-1111-1221</td>
              <td>2011-04-19</td>
            </tr>
          </tbody>
        </table>
        <!-- End Table with stripped rows -->
  </section>

  </main><!-- End #main -->
<!-- 체크박스 스크립트 -->
<script>
 
 	// checkbox 적용되는 datatables 효과 제거
  
   window.addEventListener('DOMContentLoaded', function() {
      const firstThElement = document.querySelector('th:first-child');
      const aElement = firstThElement.querySelector('a');
  
      firstThElement.removeAttribute('data-sortable');
      firstThElement.removeAttribute('aria-sort');
      firstThElement.classList.remove('datatable-ascending');
      firstThElement.removeAttribute('style');
  
      if (aElement) {
        aElement.removeAttribute('href');
        aElement.classList.remove('datatable-sorter');
      }
      document.getElementById("allCheck").addEventListener('change', function(){
		for (var i = 0; i < document.getElementsByName("checked").length; i++) {
			document.getElementsByName("checked")[i].checked = this.checked;
		}
	});	
    });
    document.getElementById("allCheck").addEventListener('change', function(){
		for (var i = 0; i < document.getElementsByName("checked").length; i++) {
			document.getElementsByName("checked")[i].checked = this.checked;
		}
	});	
</script>

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