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
      <h1>코드 수정</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item">사이트 관리</li>
          <li class="breadcrumb-item active">코드관리</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

  <section>
   <form name="form" method="post" action="/com.crowmarket.app.infra.commen.code.CodeController">
    <div class="card">
      <div class="card-body">
        <div class="card-search">
          <div class="input-group input-group-sm mb-3 w-25 inputseq">
            <span class="input-group-text" id="inputGroup-sizing-sm">Seq</span>
            <c:choose>
				<c:when test="${empty item.codeSeq}">
				<input type="text" id="codeSeq" readonly>
				</c:when>
				<c:otherwise>
					 <input type="text" class="form-control" id="codeSeq" name = "codeSeq"  readonly value="<c:out value="${item.codeSeq}"/>" >
				</c:otherwise>
			</c:choose>
          </div>
         </div>
        </div>
      <div class="card">
      <div class="card-body">
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">코드 그룹seq</span>
            <input type="text" class="form-control" id="codeGroup_seq" name=codeGroup_seq value="<c:out value="${ item.codeGroup_seq}"/>">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">코드 이름</span>
            <input type="text" class="form-control" id="codeKO" name="codeKO" value="<c:out value="${ item.codeKO}"/>">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">코드 이름(EN)</span>
            <input type="text" class="form-control" id="codeEN" name="codeEN" value="<c:out value="${ item.codeEN}"/>">
          </div>
         </div>
      </div>
      </div>
         <div class="card-body">
        <div class="d-flex justify-content-between p-5">
          <div>
    <button class="btn btn-secondary" id="goToList" type="button">목록</button>
  </div>
         <div class="card-search d-flex">
		         <c:choose>
					<c:when test="${empty item.codeSeq }">
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
      </form>
  </section>

  </main><!-- End #main -->


<script type="text/javascript">

var filterEN = /^[a-zA-Z0-9]*$/;
var filterKO = /^[ㄱ-ㅎ가-힣a-zA-Z0-9]*$/;


validationInsert = function(){
	if(validationUpdt() == false) return false;
	
	if (filterEN.test($.trim($("#codeEN").val()))==false) {
		  alert("공백 없는영문과 숫자만 입력해주세요!");
		  $("#codeEN").focus();
		  return false;
		} else {
		  // by pass
		}
}


validationUpdt = function() {
	if(filterKO.test($.trim($("#codeKO").val()))==false){
		alert("공백이없는 데이터를 입력해주세요");
		$("#codeKO").focus();
		return false;
	}else	{
		// by pass
}
}


$("#btnUpdate").on("click", function(){
	if(validationUpdt() == false) return false;  
		// 자기 자신을 다시 한 번 호출해준다.
		/* $("form[name=formList]").attr("method", "post"); */
		$("form[name=form]").attr("action", "/codeUpdate").submit();

	}
);
 $("#btnDelete").on("click", function(){
	
	$("form[name=form]").attr("action", "/codeDelete").submit();
	 
}
); 
/* $("#btnSave").on("click", function(){
	
	$("form[name=form]").attr("action", "/commenGroupSave").submit();
	 
} 
);*/
$("#btnSave").on("click", function(){
	if(validationInsert() == false) return false;
	$("form[name=form]").attr("action", "/codeSave").submit();
	
});
$("#btnUpdele").on("click", function(){
	
	$("form[name=form]").attr("action", "/codeUpdele").submit();
	 
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

  <%@ include file="../../include/jslink.jsp"%>
  

</body>

</html>