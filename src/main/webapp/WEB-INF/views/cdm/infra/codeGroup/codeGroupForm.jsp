<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="../../include/jstl.jsp"%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>코드 수정</title>
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
      <h1>코드 그룹 수정</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item">사이트 관리</li>
          <li class="breadcrumb-item active">코드그룹관리</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

  <section>
   <form name="form" method="post" action="/com.crowmarket.app.infra.commen.codeGroup.CodeGroupController">
    <div class="card">
      <div class="card-body">
        <div class="card-search">
          <div class="input-group input-group-sm mb-3 w-25 inputseq">
            <span class="input-group-text" id="inputGroup-sizing-sm">Seq</span>
            <c:choose>
				<c:when test="${empty item.codeGroupSeq }">
				<input type="text" id="codeGroupSeq" readonly >
				</c:when>
				<c:otherwise>
					 <input type="text" class="form-control" id="codeGroupSeq" name = "codeGroupSeq"  readonly value="<c:out value="${ item.codeGroupSeq}"/>">
				</c:otherwise>
			</c:choose>
          </div>
          </div>
          </div>
          <div class="card">
      <div class="card-body">
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">코드 그룹 이름</span>
            <input type="text" class="form-control" id="codeGroupKO" name="codeGroupKO" value="<c:out value="${ item.codeGroupKO}"/>">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">코드 그룹 이름(EN)</span>
            <input type="text" class="form-control" id="codeGroupEN" name="codeGroupEN" value="<c:out value="${ item.codeGroupEN}"/>">
          </div>
           </div>
       </div>
          <div class="card-body">
        <div class="d-flex justify-content-between p-5">
  <!-- 첫 번째 버튼 그룹 (목록 버튼) -->
  <div>
    <button class="btn btn-secondary" id="goToList" type="button">목록</button>
  </div>
  
  <!-- 두 번째 버튼 그룹 (Save, Update, Delete, Updele 버튼들) -->
  <div class="card-search d-flex">
	         <c:choose>
				<c:when test="${empty item.codeGroupSeq }">
					<button class="btn btn-secondary" id="btnSave"  type="button">Save</button>
				</c:when>
				<c:otherwise>
		      	 	<button class="btn btn-secondary" id="btnUpdate"  type="button">update</button>
					<button class="btn btn-secondary" id="btnDelete"  type="button">delete</button>
					<button class="btn btn-danger" id="btnUpdele"  type="button">Updele</button>
				</c:otherwise>	
			</c:choose>
			</div>
         </div>
       </div>
      </div>
      </form>
  </section>

  </main><!-- End #main -->
<script type="text/javascript" src="/resources/projact1/js/validation/validation.js"> </script>
<%@ include file="../../include/jslink.jsp"%>
<script type="text/javascript">
 
	
$("#btnUpdate").on("click", function(){
	
		// 자기 자신을 다시 한 번 호출해준다.
		/* $("form[name=formList]").attr("method", "post"); */
		$("form[name=form]").attr("action", "/codeGroupUpdate").submit();

	}
);
 $("#btnDelete").on("click", function(){
	
	$("form[name=form]").attr("action", "/codeGroupDelete").submit();
	 
}
); 
/* $("#btnSave").on("click", function(){
	
	$("form[name=form]").attr("action", "/commenGroupSave").submit();
	 
} 
);*/
$("#btnSave").on("click", function(){
	
	/* validateAndSubmit2("#codeGroupKO","#codeGroupSave"); */
	 if($.trim($("#codeGroupKO").val())=="" || $.trim($("#codeGroupKO").val()) == null){
		alert("데이터를 입력해주세요!");
		$("#codeGroupKO").focus();
	}else	{
<!-- by pass -->
	$("form[name=form]").attr("action", "/codeGroupSave").submit();
	
	}
}
); 

$("#btnUpdele").on("click", function(){
	
	$("form[name=form]").attr("action", "/codeGroupUpdele").submit();
	 
}
);
//이전 페이지로 돌아가는 함수
function goBack() {
  window.history.back();
}

// "목록" 버튼을 클릭하면 goBack 함수를 호출
document.getElementById("goToList").addEventListener("click", goBack);
</script>
  <!-- ======= Footer ======= -->
  <%@ include file="../../include/footer.jsp"%>
  <!-- End Footer -->

  
  

</body>

</html>