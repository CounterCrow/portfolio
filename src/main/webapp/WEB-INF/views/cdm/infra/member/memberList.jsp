<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="../../include/jstl.jsp"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>사용자관리</title>
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
  <!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>사용자관리</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item">Member</li>
          <li class="breadcrumb-item active">사용자관리</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

  <section>
    <div class="card">
      <div class="card-body">
        <div class="card-search">
  <c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
        <form  class="input-group input-group-sm mb-3 w-100 justify-content-start" name="formList">
        <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
        <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
          <div class="input-group input-group-sm mb-3 w-25 ">
            <span class="input-group-text" id="inputGroup-sizing-sm">Seq</span>
            <input type="text" class="form-control" id="keySeq" name="keySeq"  value="<c:out value="${param.keySeq}"/>">
          </div>
          <div class="input-group input-group-sm mb-3 w-25 ">
            <span class="input-group-text" id="inputGroup-sizing-sm">adminNY</span>
            <input type="text" class="form-control" id="keyAdminNY" name="keyAdminNY"  value="<c:out value="${param.keyAdminNY}"/>">
          </div>
	          <div class="input-group input-group-sm mb-3 w-25">
	            <span class="input-group-text" id="inputGroup-sizing-sm">ID</span>
	            <input type="text" class="form-control" id="keyID" name="keyID" value="<c:out value="${param.keyID}"/>">
	          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">Name</span>
            <input type="text" class="form-control"id="keyName" name="keyName" value="<c:out value="${param.keyName}"/>" >
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">Gender</span>
            <select class="form-select-control" id="keyGender" name="keyGender">
			  <option value="">전체</option>
			  <option value="6">남성</option>
			  <option value="7">여성</option>
			  <option value="8">기타</option>
			</select>
            <%-- <input type="text" class="form-control"id="keyGender" name="keyGender" value="<c:out value="${param.keyGender}"/>" > --%>
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">NickName</span>
            <input type="text" class="form-control"id="keyNickName" name="keyNickName" value="<c:out value="${param.keyNickName}"/>" >
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">Phone</span>
            <input type="text" class="form-control"id="keyPhoneNUM" name="keyPhoneNUM" value="<c:out value="${param.keyPhoneNUM}"/>" >
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">Email</span>
            <input type="text" class="form-control"id="keyEmail" name="keyEmail" value="<c:out value="${param.keyEmail}"/>" >
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
              <span class="input-group-text" id="inputGroup-sizing-sm">생년월일</span>
              <input type="text" class="form-control"id="keyDob" name="keyDob" value="<c:out value="${param.keyDob}"/>">
            </div>
            <div class="input-group input-group-sm mb-3 w-25">
              <span class="input-group-text" id="inputGroup-sizing-sm">생성일</span>
              <input type="date" class="form-control"id="keyRegDT" name="keyRegDT" value="<c:out value="${param.keyRegDT}"/>">
            </div>
            <div class="input-group input-group-sm mb-3 w-25">
              <span class="input-group-text" id="inputGroup-sizing-sm">변경일</span>
              <input type="date" class="form-control"id="keyModDT" name="keyModDT" value="<c:out value="${param.keyModDT}"/>">
            </div>
            <div class="btn-box d-grid gap-2 d-md-flex justify-content-md-end" >
              <button class="btn btn-secondary" id="shbtn"  type="button"><i class="bi bi-search"></i></button>
              <button class="btn btn-success" type="button" onclick="location.href='memberList'"><i class="bi bi-arrow-counterclockwise"></i></button>
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
              <th scope="col">adminNY</th>
              <th scope="col">ID</th>
              <th scope="col">Name</th>
              <th scope="col">Gender</th>
              <!-- <th scope="col">delNY</th> -->
              <th scope="col">NickName</th>
              <th scope="col">phone</th>
              <th scope="col">Email</th>
              <th scope="col">Dob</th>
              <th scope="col">생성일(연-월-일 시:분:초)</th>
              <th scope="col">수정일(연-월-일 시:분:초)</th>
              </tr>
          </thead>
          <tbody>
            <c:choose>
				<c:when test="${fn:length(list) eq 0}">
					<tr>
						<td class="text-center" colspan="9">There are no data!</td>
					</tr>	
				</c:when>
				<c:otherwise>
					<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
					<c:forEach items="${list}" var="list" varStatus="status">
					<tr>
						<td><c:out value="${status.index + 1}"></c:out></td>
						<td><c:out value="${list.memberSeq}"></c:out></td>
						<td><a href="/memberForm?memberSeq=<c:out value="${list.memberSeq}"></c:out>"><c:out value="${list.adminNY}"></c:out></a></td>
						<td><a href="/memberForm?memberSeq=<c:out value="${list.memberSeq}"></c:out>"><c:out value="${list.memberId}"></c:out></a></td>
						<%-- <td><c:out value="${list.delNY}"></c:out></td> --%>
						<td><a href="/memberForm?memberSeq=<c:out value="${list.memberSeq}"></c:out>"><c:out value="${list.memberName}"></c:out></a></td>
						 <td>
				            <c:forEach items="${listCodeGender}" var="gender">
				                <c:if test="${list.memberGenderCD eq gender.codeSeq}">
				                    <c:out value="${gender.codeKO}"></c:out>
				                </c:if>
				            </c:forEach>
				        </td>
						<td><a href="/memberForm?memberSeq=<c:out value="${list.memberSeq}"></c:out>"><c:out value="${list.memberNickName }"></c:out></a></td>
						<td><a href="/memberForm?memberSeq=<c:out value="${list.memberSeq}"></c:out>"><c:out value="${list.memberPhone}"></c:out></a></td>
						<td><a href="/memberForm?memberSeq=<c:out value="${list.memberSeq}"></c:out>"><c:out value="${list.memberEmail}"></c:out></a></td>
						<td><a href="/memberForm?memberSeq=<c:out value="${list.memberSeq}"></c:out>"><c:out value="${list.memberDob}"></c:out></a></td>
						<td><a href="/memberForm?memberSeq=<c:out value="${list.memberSeq}"></c:out>"><fmt:formatDate value="${list.regDT}" pattern="yyyy-MM-dd HH:mm:ss" /></a></td>
						<td><a href="/memberForm?memberSeq=<c:out value="${list.memberSeq}"></c:out>"><fmt:formatDate value="${list.modDT}" pattern="yyyy-MM-dd HH:mm:ss" /></a></td>
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
              <button class="btn btn-secondary" id="btnAdd" type="button" onclick="location.href='memberForm'">추가</button>
           </div>
        <!-- End Table with stripped rows -->
  </section>
 <button class="btn btn-secondary" type="button"><i class="bi bi-search"></i></button>
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
   <script type="text/javascript">
 	 $("#shbtn").on("click", function(){
	
 		// 자기 자신을 다시 한 번 호출해준다.
			$("form[name=formList]").attr("method", "post");
			$("form[name=formList]").attr("action", "/memberList").submit();
 		 
 		 
// 		 alert("sdsada");
  	}
  );
 	goList = function(thisPage) {
 		$("input:hidden[name=thisPage]").val(thisPage);
 		$("form[name=formList]").attr("method", "post");
 		$("form[name=formList]").attr("action", "/memberList").submit();
 	}

  </script>

</body>

</html>