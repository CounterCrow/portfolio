<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>맴버 상세</title>
  <meta content="" name="description">
  <meta content="" name="---------">
  <%@ include file="../../include/csslink.jsp"%>
</head>

<body>

  <!-- ======= Header ======= -->
  <%@ include file="../../include/header.jsp"%>
 
  <!-- ======= Sidebar ======= -->
  <%@ include file="../../include/sidebar.jsp"%>
  <!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>맴버 상세정보</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item">사이트 관리</li>
          <li class="breadcrumb-item active">맴버 상세정보</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

  <section>
   <form name="form" method="post" action="/com.crowmarket.app.infra.commen.member.memberController">
    <div class="card">
      <div class="card-body">
        <div class="card-search">
          <div class="input-group input-group-sm mb-3 w-25 inputseq">
            <span class="input-group-text" id="inputGroup-sizing-sm">Seq</span>
            <c:choose>
				<c:when test="${empty item.memberSeq }">
				<input type="text" id="memberSeq" disabled="disabled" placeholder="Auto increment">
				</c:when>
				<c:otherwise>
					 <input type="text" class="form-control" id="memberSeq" name = "memberSeq"  readonly value="<c:out value="${item.memberSeq }"/>" >
				</c:otherwise>
			</c:choose>
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">adminNY</span>
            <input type="text" class="form-control" id="adminNY" name = "adminNY"   value="<c:out value="${item.adminNY }"/>"readonly >
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">ID</span>
            <input type="text" class="form-control" id="memberId" name="memberId" value="<c:out value="${ item.memberId}"/>" readonly>
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">Name</span>
            <input type="text" class="form-control" id="memberName" name="memberName" value="<c:out value="${ item.memberName}"/>"readonly>
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">NickName</span>
            <input type="text" class="form-control" id="memberNickName" name="memberNickName" value="<c:out value="${ item.memberNickName}"/>"readonly>
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">Email</span>
            <input type="text" class="form-control" id="memberEmail" name="memberEmail" value="<c:out value="${ item.memberEmail}"/>"readonly>
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">Phone</span>
            <input type="text" class="form-control" id="memberPhone" name="memberPhone" value="<c:out value="${ item.memberPhone}"/>"readonly>
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">Dob</span>
            <input type="text" class="form-control" id="memberDob" name="memberDob" value="<c:out value="${ item.memberDob}"/>"readonly>
          </div>
         
         
       <!--      <div class="btn-box d-grid gap-2 d-md-flex justify-content-md-end">
	            <button class="btn btn-secondary" id="btnSave"  type="button">Save</button>
	            <button class="btn btn-secondary" id="btnUpdate"  type="button">update</button>
				<button class="btn btn-secondary" id="btnDelete"  type="button">delete</button>
				<button class="btn btn-danger" id="btnUpdele"  type="button">Updele</button>
            </div> -->
            
         </div>
          <div class="btn-box d-grid gap-2 d-md-flex justify-content-md-end">
	         <c:choose>
				<c:when test="${item.adminNY eq 1}">
					<button class="btn btn-warning" id="btnLoseAdmin"  type="button">loseAdmin</button>					
				</c:when>
				<c:otherwise>
					<button class="btn btn-danger" id="btnUpdele"  type="button">Updele</button>
					<button class="btn btn-success" id="btnGetAdmin"  type="button">getAdmin</button>
				</c:otherwise>	
			</c:choose>
		</div>	
       </div>
      </div>
      </form>
  </section>

  </main><!-- End #main -->
<script type="text/javascript" src="/resources/projact1/js/validation/validation.js"> </script>
<script type="text/javascript">
 $("#btnDelete").on("click", function(){
	
	$("form[name=form]").attr("action", "/memberDelete").submit();
	 
}
); 

$("#btnUpdele").on("click", function(){
	
	$("form[name=form]").attr("action", "/memberUpdele").submit();
	 
}
);
$("#btnGetAdmin").on("click", function(){
	
	$("form[name=form]").attr("action", "/getAdmin").submit();
	 
}
);
$("#btnLoseAdmin").on("click", function(){
	
	$("form[name=form]").attr("action", "/loseAdmin").submit();
	 
}
);
</script>
  <!-- ======= Footer ======= -->
  <%@ include file="../../include/footer.jsp"%>
  <!-- End Footer -->

  <%@ include file="../../include/jslink.jsp"%>
  

</body>

</html>