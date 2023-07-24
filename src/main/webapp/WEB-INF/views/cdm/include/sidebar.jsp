<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="admin">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li>
      <!-- End Dashboard Nav -->
      <!-- 사이드바 -->
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>Member</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
          <li>
            <a href="/memberList">
              <i class="bi bi-circle"></i><span>사용자관리</span>
            </a>
          </li>
        </ul>
      </li>
      <!-- End Management Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>Product</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/product">
              <i class="bi bi-circle"></i><span>제품 관리</span>
            </a>
          </li>
        </ul>
      </li>
      <!-- End Forms Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav2" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>사이트 관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav2" class="nav-content collapse" data-bs-parent="#sidebar-nav">
          <li>
            <a href="/codeGroupList">
              <i class="bi bi-circle "></i><span>코드그룹관리</span>
            </a>
          </li>
          <li>
            <a href="/codeList">
              <i class="bi bi-circle"></i><span>코드관리</span>
            </a>
          </li>
          <li>
            <a href="/categoryList">
              <i class="bi bi-circle"></i><span>카테고리관리</span>
            </a>
          </li>
        </ul>
      </li>
      <!-- End Forms Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#">
          <i class="bi bi-gear"></i>
          <span>설정</span>
        </a>
      </li><!-- End Blank Page Nav -->

    </ul>

  </aside>
  <!-- <script>
  $(document).ready(function() {
      // a 태그 클릭 이벤트 핸들러
      $('a.nav-link').click(function(e) {
        e.preventDefault(); // 기본 동작 중단 (페이지 이동 방지)
        
        $('a.nav-link').removeClass('show'); // 모든 a 태그에서 .active 클래스 제거
        $(this).addClass('show'); // 클릭한 a 태그에 .active 클래스 추가

      });
    });
  </script> -->