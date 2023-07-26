<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="../../include/jstl.jsp"%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>코드 관리</title>
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
      <h1>코드 관리</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="/index">Home</a></li>
          <li class="breadcrumb-item">사이트 관리</li>
          <li class="breadcrumb-item active">코드관리</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

  <section>
    <div class="card">
      <div class="card-body">
        <div class="card-search">
        <form  class="input-group input-group-sm mb-3 w-100" name="formList">
        <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
		<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
          <div class="input-group input-group-sm mb-3 w-25 ">
            <span class="input-group-text" id="inputGroup-sizing-sm">Seq</span>
            <input type="text" class="form-control" id="keySeq" name="keySeq" value="<c:out value="${param.keySeq}"/>">
          </div>
          <div class="input-group input-group-sm mb-3 w-25 ">
            <span class="input-group-text" id="inputGroup-sizing-sm">categoryParents</span>
            <input type="text" class="form-control" id="keyParents" name="keyParents" value="<c:out value="${param.keyParents}"/>">
          </div>
           <div class="input-group input-group-sm mb-3 w-25 ">
            <span class="input-group-text" id="inputGroup-sizing-sm">categoryDepth</span>
            <input type="text" class="form-control" id="keyDepth" name="keyDepth" value="<c:out value="${param.keyDepth}"/>">
          </div>
	          <div class="input-group input-group-sm mb-3 w-25">
	            <span class="input-group-text" id="inputGroup-sizing-sm">Name</span>
	            <input type="text" class="form-control" id="keyNameKO" name="keyNameKO" value="<c:out value="${param.keyNameKO}"/>">
	          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">Name(EN)</span>
            <input type="text" class="form-control"id="keyNameEN" name="keyNameEN"value="<c:out value="${param.keyNameEN}"/>" >
          </div>
            <div class="input-group input-group-sm mb-3 w-25">
              <span class="input-group-text" id="inputGroup-sizing-sm">생성일</span>
              <input type="date" class="form-control"id="keyRegDT" name="keyRegDT"value="<c:out value="${param.keyRegDT}"/>">
            </div>
            <div class="btn-box d-grid gap-2 d-md-flex justify-content-md-end">
              <button class="btn btn-secondary" id="shbtn"  type="button"><i class="bi bi-search"></i></button>
              <button class="btn btn-success" type="button" onclick="location.href='categoryList'"><i class="bi bi-arrow-counterclockwise"></i></button>
            </div>
             </form>            
         </div>
       </div>
      </div>
        
        <!-- Table with stripped rows -->
        <table class="table table-striped ">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Seq</th>
              <th scope="col">Parents</th>
              <th scope="col">Depth</th>
              <th scope="col">Name</th>
              <!-- <th scope="col">delNY</th> -->
              <th scope="col">Name(EN)</th>
              <th scope="col">생성일(연-월-일 시:분:초)</th>
              <th scope="col">수정일(연-월-일 시:분:초)</th>
              </tr>
          </thead>
          <tbody>
            <c:choose>
				<c:when test="${fn:length(list) eq 0}">
					<tr>
						<td class="text-center" colspan="9">There is no data!</td>
					</tr>	
				</c:when>
				<c:otherwise>
					<c:forEach items="${list}" var="list" varStatus="status">
					<tr>
						<td><c:out value="${status.index + 1}"></c:out></td>
						<td><c:out value="${list.categorySeq }"></c:out></td>
						<td><a href="/categoryForm?categorySeq=<c:out value="${list.categorySeq}"></c:out>"><c:out value="${list.categoryParents}"></c:out></a></td>
						<td><a href="/categoryForm?categorySeq=<c:out value="${list.categorySeq}"></c:out>"><c:out value="${list.categoryDepth}"></c:out></a></td>
						<td><a href="/categoryForm?categorySeq=<c:out value="${list.categorySeq}"></c:out>"><c:out value="${list.categoryKO }"></c:out></a></td>
						<%-- <td><c:out value="${list.delNY}"></c:out></td> --%>
						<td><a href="/categoryForm?categorySeq=<c:out value="${list.categorySeq}"></c:out>"><c:out value="${list.categoryEN }"></c:out></a></td>
						<td><a href="/categoryForm?categorySeq=<c:out value="${list.categorySeq}"></c:out>"><fmt:formatDate value="${list.regDT}" pattern="yyyy-MM-dd HH:mm:ss" /></a></td>
						<td><a href="/categoryForm?categorySeq=<c:out value="${list.categorySeq}"></c:out>"><fmt:formatDate value="${list.modDT}" pattern="yyyy-MM-dd HH:mm:ss" /></a></td>
					</tr>
					</c:forEach>
				</c:otherwise>
		</c:choose>	
          </tbody>
        </table>
 		 <div class="container-fluid px-0 mt-2">
    <div class="row">
        <div class="col">
            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
            <ul class="pagination justify-content-center mb-0">
                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
				<c:if test="${vo.startPage gt vo.pageNumToShow}">
	               <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="bi bi-caret-left-fill"></i></a></li>
				</c:if>
				<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
					<c:choose>
						<c:when test="${i.index eq vo.thisPage}">
		                	<li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
						</c:when>
						<c:otherwise>             
			                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>                
				<c:if test="${vo.endPage ne vo.totalPages}">                
			                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="bi bi-caret-right-fill"></i></a></li>
				</c:if>
                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
            </ul>
        </div>
    </div>
</div>
        <!-- End Table with stripped rows -->
          <div class="btn-box d-grid gap-2 d-md-flex justify-content-md-end">
              <button class="btn btn-secondary" id="btnAdd" type="button" onclick="location.href='categoryForm'">추가</button>
           </div>
  </section>
  </main>
  <!-- End #main -->

  <!-- ======= Footer ======= -->
  <%@ include file="../../include/footer.jsp"%>
  <!-- End Footer -->
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="../../include/jslink.jsp"%>
  <script type="text/javascript">
 	 $("#shbtn").on("click", function(){
	
 		// 자기 자신을 다시 한 번 호출해준다.
			$("form[name=formList]").attr("method", "post");
			$("form[name=formList]").attr("action", "/categoryList").submit();
 		 
 		 
  	}
  );
 	goList = function(thisPage) {
 		$("input:hidden[name=thisPage]").val(thisPage);
 		$("form[name=formList]").attr("method", "post");
 		$("form[name=formList]").attr("action", "/categoryList").submit();
 	}
  </script>
  

</body>

</html>