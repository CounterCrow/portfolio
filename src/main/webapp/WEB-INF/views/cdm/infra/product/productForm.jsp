<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="../../include/jstl.jsp"%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>제품 상세</title>
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
      <h1>제품 상세정보</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item">사이트 관리</li>
          <li class="breadcrumb-item active">제품 상세정보</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

  <section>
   <form id="form" name="form" method="post" autocomplete="off" enctype="multipart/form-data" action="/com.crowmarket.app.infra.commen.product.productController">
   <%@ include file="../../include/cdminTags.jsp"%>
    <div class="card">
      <div class="card-body">
        <div class="card-search ">
          <div class="input-group input-group-sm mb-3 w-25 inputseq">
            <span class="input-group-text" id="inputGroup-sizing-sm">Seq</span>
            <c:choose>
				<c:when test="${empty item.productSeq }">
				<input type="text" id="productSeq" readonly>
				</c:when>
				<c:otherwise>
					 <input type="text" class="form-control" id="productSeq" name = "productSeq"   value="<c:out value="${item.productSeq }"/>"readonly >
				</c:otherwise>
			</c:choose>
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">제품명</span>
            <input type="text" class="form-control" id="productName" name="productName" value="<c:out value="${ item.productName }"/>">
          </div>
          </div>
          </div>
            <div class="card-body">
        <div class="card-search d-flex justify-content-end">
          <span class="input-group-text" id="inputGroup-sizing-sm">제품 타입</span>
          <select class="form-select-sm"  id="typeCD" name="typeCD" style="width: 15%;">
            <option value="">전체</option>
           <c:forEach var="productType" items="${listCategoryProductType}">
     		<option value="${productType.categorySeq}"<c:if test="${productType.categorySeq eq item.typeCD}">selected</c:if>>${productType.categoryKO}</option>
    		</c:forEach>
          </select>
          <span class="input-group-text" id="inputGroup-sizing-sm">제품 용도</span>
          <select class="form-select-sm"  id="purposeCD" name="purposeCD"  style="width: 15%;">
            <option value="">전체</option>
           <c:forEach var="purposeType" items="${listCategoryPurposeType}">
     		<option value="${purposeType.categorySeq}" <c:if test="${purposeType.categorySeq eq item.purposeCD}">selected</c:if>>${purposeType.categoryKO}</option>
    		</c:forEach>
          </select>
          <span class="input-group-text" id="inputGroup-sizing-sm">연결 타입</span>
          <select class="form-select-sm " id="connectionTypeCD" name="connectionTypeCD" style="width: 15%;">
            <option value=""selected>전체</option>
            <c:forEach var="connectionType" items="${listCategoryConnectionType}">
     		<option value="${connectionType.categorySeq}" <c:if test="${connectionType.categorySeq eq item.connectionTypeCD}">selected</c:if>>${connectionType.categoryKO}</option>
    		</c:forEach>
          </select>
          <span class="input-group-text" id="inputGroup-sizing-sm">키 배열</span>
          <select class="form-select-sm " id="productArrangementCD" name="productArrangementCD" >
            <option value=""selected>전체</option>
            <c:forEach var="arrangementType" items="${listCategoryArrangementType}">
     		<option value="${arrangementType.categorySeq}" <c:if test="${arrangementType.categorySeq eq item.productArrangementCD}">selected</c:if>>${arrangementType.categoryKO}</option>
    		</c:forEach>
          </select>
          <span class="input-group-text" id="inputGroup-sizing-sm">브랜드</span>
          <select class="form-select-sm " id="brandCD" name="brandCD" >
            <option value=""selected>전체</option>
            <c:forEach var="brand" items="${listCategoryBrand}">
     		<option value="${brand.categorySeq}" <c:if test="${brand.categorySeq eq item.brandCD}">selected</c:if>>${brand.categoryKO}</option>
    		</c:forEach>
          </select>
        </div>
        </div>
      <div class="card-body">
        <div class="card-search ">
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">높이(mm)</span>
            <input type="text" class="form-control" id="productHeight" name="productHeight" value="<c:out value="${ item.productHeight }"/>">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">너비(mm)</span>
            <input type="text" class="form-control" id="productWidth" name="productWidth" value="<c:out value="${ item.productWidth }"/>">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">길이(mm)</span>
            <input type="text" class="form-control" id="productLength" name="productLength" value="<c:out value="${ item.productLength }"/>">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">무게(g)</span>
            <input type="text" class="form-control" id="productWeight" name="productWeight" value="<c:out value="${ item.productWeight }"/>">
          </div>
           </div>
        </div>
          <div class="card-body">
        <div class="card-search d-flex justify-content-end">
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">가격</span>
            <input type="text" class="form-control" id="productPrice" name="productPrice" value="<c:out value="${ item.productPrice }"/>">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">할인여부</span>
            <input type="text" class="form-control" id="saleNY" name="saleNY" value="<c:out value="${ item.saleNY }"/>">
          </div>
           <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">최종가격</span>
            <input type="text" class="form-control" id="productFinalPrice" name="productFinalPrice" value="<c:out value="${ item.productFinalPrice }"/>">
          </div>
        </div>
      </div>
      <!-- ------------------------------------------------------- -->
                            <div class="d-flex p-5 justify-content-center" >
                              <div class="col-sm-6 mt-3 mt-sm-0 border border-secondary" style="background-color: #EFF3FB;height: 300px; ">
					        	<c:set var="type" value="2"/>		<!-- #-> -->
					        	<c:set var="name" value="uploadImg"/>		<!-- #-> -->
					        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
					        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
					            <label for="uploadImg" class="form-label input-file-button">이미지첨부</label>
					 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
								<div id="<c:out value="${name }"/>Preview" class="addScroll">
									<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
										<c:if test="${listUploaded.type eq type }">
											<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
												<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
												<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
											</div>
										</c:if>
									</c:forEach>
								</div>
					        </div>
					    </div>
					    <div class="d-flex justify-content-center" style="width:60%;margin:auto;">
						<label for="uploadImg" class="form-label btn btn-secondary">
						  <input type="file" id="uploadImg" style="display:none;">
						  이미지첨부
						</label>
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
      <c:when test="${empty item.productSeq }">
        <button class="btn btn-secondary" id="btnSave" type="button">Save</button>
      </c:when>
      <c:otherwise>
        <button class="btn btn-secondary" id="btnUpdate" type="button">Update</button>
        <button class="btn btn-secondary" id="btnDelete" type="button">Delete</button>
        <button class="btn btn-danger" id="btnUpdele" type="button">Updele</button>
      </c:otherwise>	
    </c:choose>
  </div>
</div>
        
       </div>
      </div>
    </form>
  </section>

  </main><!-- End #main -->
<script type="text/javascript" src="/resources/project1/js/validation/validation.js"> </script>
<%@ include file="../../include/jslink.jsp"%>
<script type="text/javascript">
 $("#btnDelete").on("click", function(){
	
	$("form[name=form]").attr("action", "/productDelete").submit();
	 
}
); 

$("#btnUpdele").on("click", function(){
	
	$("form[name=form]").attr("action", "/productUpdele").submit();
	 
}
);
$("#btnSave").on("click", function(){
	
	$("form[name=form]").attr("action", "/productSave").submit();
	 
}
);
$("#btnUpdate").on("click", function(){
	
	$("form[name=form]").attr("action", "/productUpdate").submit();
	 
}
);
$("#uploadImg").on("click", function () {
    $("#" + "uploadImg")[0].click();
  });


// 이전 페이지로 돌아가는 함수
function goBack() {
  window.history.back();
}

// "목록" 버튼을 클릭하면 goBack 함수를 호출
document.getElementById("goToList").addEventListener("click", goBack);

upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
	
//	objName 과 seq 는 jsp 내에서 유일 하여야 함.
//	memberProfileImage: 1
//	memberImage: 2
//	memberFile : 3

//	uiType: 1 => 이미지형
//	uiType: 2 => 파일형
//	uiType: 3 => 프로필형

	var files = $("#" + objName +"")[0].files;
	var filePreview = $("#" + objName +"Preview");
	var numbering = [];
	var maxNumber = 0;
	
	if(uiType == 1) {
		var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
		var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
		
		for(var i=0; i<tagIds.length; i++){
			var tagId = tagIds[i].getAttribute("id").split("_");
			numbering.push(tagId[2]);
		}
		
		if(uploadedFilesCount > 0){
			numbering.sort();
			maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
		}
	} else if(uiType == 2){
		var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
		var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

		for(var i=0; i<tagIds.length; i++){
			var tagId = tagIds[i].getAttribute("id").split("_");
			numbering.push(tagId[2]);
		}
		
		if(uploadedFilesCount > 0){
			numbering.sort();
			maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
		}
	} else {
		// by pass
	}
	
	$("#" + objName + "MaxNumber").val(maxNumber);

	var totalFileSize = 0;
	var filesCount = files.length;
	var filesArray = [];
	
	allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
	allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
	allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
	
	if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
	
	for (var i=0; i<filesCount; i++) {
		if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
		if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

		totalFileSize += files[i].size;
		
		filesArray.push(files[i]);
	}

	if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
	
	if (uiType == 1) {
		for (var i=0; i<filesArray.length; i++) {
			var file = filesArray[i];

			var picReader = new FileReader();
		    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
		    picReader.readAsDataURL(file);
		}			
	} else if(uiType == 2) {
		for (var i = 0 ; i < filesCount ; i++) {
			addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
		}
	} else if (uiType == 3) {
		var fileReader = new FileReader();
		 fileReader.onload = function () {
			 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
		 }	
		 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
	} else {
		return false;
	}
	return false;
}


addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
	return function(event) {
		var imageFile = event.target;
		var sort = parseInt(maxNumber) + i;

		var divImage = "";
		divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
		divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
		divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
		divImage += '</div> ';
		
		filePreview.append(divImage);
    };
}


delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
	
	$("#imgDiv_"+type+"_"+sort).remove();
	
	var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
	var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

	if(objDeleteSeq.val() == "") {
		objDeleteSeq.val(deleteSeq);
	} else {
		objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
	}
	
	if(objDeletePathFile.val() == "") {
		objDeletePathFile.val(pathFile);
	} else {
		objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
	}
}


addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

	var sort = parseInt(maxNumber) + i;
	
	var li ="";
	li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
	li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
	li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
	li += name;
	li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
	li +='</li>';
	
	filePreview.append(li);
}


delLi = function(objName, type, sort, deleteSeq, pathFile) {
	
	$("#li_"+type+"_"+sort).remove();

	var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
	var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

	if(objDeleteSeq.val() == "") {
		objDeleteSeq.val(deleteSeq);
	} else {
		objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
	}
	
	if(objDeletePathFile.val() == "") {
		objDeletePathFile.val(pathFile);
	} else {
		objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
	}
}

openViewer = function (type, sort) {
	var str = '<c:set var="tmp" value="'+ type +'"/>';
	$("#modalImgViewer").append(str);
	$("#modalImgViewer").modal("show");
}


</script>
  <!-- ======= Footer ======= -->
  <%@ include file="../../include/footer.jsp"%>
  <!-- End Footer -->

  
  

</body>

</html>