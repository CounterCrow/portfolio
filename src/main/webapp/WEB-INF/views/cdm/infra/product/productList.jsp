<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="../../include/jstl.jsp"%>
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
        <div class="card-search">
        <form  class="input-group input-group-sm mb-3 w-100 justify-content-start" name="formList">
        <%@ include file="../../include/cdminTags.jsp"%>
        <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
		<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
            <div class="input-group input-group-sm mb-3"style="width: 150px;height:30px;">
            <span class="input-group-text" id="inputGroup-sizing-sm">Seq</span>
            <input type="text" class="form-control" id="keySeq" name="keySeq"value="<c:out value="${param.keySeq}"/>">
          </div>
           <span class="input-group-text" id="inputGroup-sizing-sm">제품 타입</span>
          <select class="form-select-sm"  id="keyTypeCD" name="keyTypeCD">
            <option value="">전체</option>
           <c:forEach var="productType" items="${listCategoryProductType}">
     		<option value="${productType.categorySeq}">${productType.categoryKO}</option>
    		</c:forEach>
          </select>
          <span class="input-group-text" id="inputGroup-sizing-sm">제품 용도</span>
          <select class="form-select-sm"  id="keyPurposeCD" name="keyPurposeCD">
            <option value="">전체</option>
           <c:forEach var="purposeType" items="${listCategoryPurposeType}">
     		<option value="${purposeType.categorySeq}">${purposeType.categoryKO}</option>
    		</c:forEach>
          </select>
          <span class="input-group-text" id="inputGroup-sizing-sm">연결 타입</span>
          <select class="form-select-sm " id="keyConnectionTypeCD" name="keyConnectionTypeCD" >
            <option value=""selected>전체</option>
            <c:forEach var="connectionType" items="${listCategoryConnectionType}">
     		<option value="${connectionType.categorySeq}">${connectionType.categoryKO}</option>
    		</c:forEach>
          </select>
           <div class="card-search">
           <span class="input-group-text" id="inputGroup-sizing-sm">키 배열</span>
          <select class="form-select-sm " id="keyArrangementCD" name="keyArrangementCD" >
            <option value=""selected>전체</option>
            <c:forEach var="arrangementType" items="${listCategoryArrangementType}">
     		<option value="${arrangementType.categorySeq}">${arrangementType.categoryKO}</option>
    		</c:forEach>
          </select>
          <span class="input-group-text" id="inputGroup-sizing-sm">브랜드</span>
          <select class="form-select-sm " id="keyBrandCD" name="keyBrandCD" >
            <option value=""selected>전체</option>
            <c:forEach var="brand" items="${listCategoryBrand}">
     		<option value="${brand.categorySeq}">${brand.categoryKO}</option>
    		</c:forEach>
          </select>
          <div class="input-group input-group-sm mb-3 w-50">
            <span class="input-group-text" id="inputGroup-sizing-sm">제품명</span>
            <input type="text" class="form-control" id="keyName" name="keyName"value="<c:out value="${param.keyName}"/>">
          </div>
        </div>
        <div class="card-search">
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">높이(mm)</span>
            <input type="text" class="form-control" id="keyHeight" name="keyHeight"value="<c:out value="${param.keyHeight}"/>">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">너비(mm)</span>
            <input type="text" class="form-control" id="keyWidth" name="keyWidth"value="<c:out value="${param.keyWidth}"/>">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">길이(mm)</span>
            <input type="text" class="form-control" id="keyLength" name="keyLength"value="<c:out value="${param.keyLength}"/>">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">무게(g)</span>
            <input type="text" class="form-control" id="keyWeight" name="keyWeight"value="<c:out value="${param.keyWeight}"/>">
          </div>
        </div>
        <div class="card-body">
        <div class="card-search">
            <div class="input-group input-group-sm mb-3 w-25">
              <span class="input-group-text" id="inputGroup-sizing-sm">가격(￦)</span>
              <input type="text" class="form-control" id="keyPrice" name="keyPrice"value="<c:out value="${param.keyPrice}"/>">
            </div>
            <span class="input-group-text" id="inputGroup-sizing-sm">할인여부</span>
            <select class="form-select-sm"  id="keySaleNY" name="keySaleNY">
              <option value=""selected>전체</option>
              <option value="1">O</option>
              <option value="0">X</option>
            </select>
            <div class="input-group input-group-sm mb-3 w-25">
              <span class="input-group-text" id="inputGroup-sizing-sm">최종가격(￦)</span>
              <input type="text" class="form-control" id="keyFinalPrice" name="keyFinalPrice"value="<c:out value="${param.keyFinalPrice}"/>">
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
              <button class="btn btn-success" type="button" onclick="location.href='productList'"><i class="bi bi-arrow-counterclockwise"></i></button>
            </div>
            </div>
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
              <th scope="col">제품 타입</th>
              <th scope="col">제품 용도</th>
              <th scope="col">연결 타입</th>
              <th scope="col">키배열</th>
              <th scope="col">브랜드</th>
              <th scope="col">제품명</th>
              <th scope="col">높이</th>
              <th scope="col">너비</th>
              <th scope="col">길이</th>
              <th scope="col">무게</th>
              <th scope="col">가격</th>
              <th scope="col">할인여부</th>
              <th scope="col">최종가격</th>
              <th scope="col">생성일</th>
              <th scope="col">수정일</th>
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
					<c:forEach items="${list}" var="list" varStatus="status">
					<tr>
						<td><c:out value="${status.index + 1}"></c:out></td>
						<td><c:out value="${list.productSeq}"></c:out></td>
							<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>">
						<c:forEach items="${listCategoryProductType}" var="productType">
				                <c:if test="${list.typeCD eq productType.categorySeq}">
				                    <c:out value="${productType.categoryKO}"></c:out>
				                </c:if>
				            </c:forEach>
						</a></td>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>">
						<c:forEach items="${listCategoryPurposeType}" var="purposeType">
				                <c:if test="${list.purposeCD eq purposeType.categorySeq}">
				                    <c:out value="${purposeType.categoryKO}"></c:out>
				                </c:if>
				            </c:forEach>
						</a></td>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>">
						<c:forEach items="${listCategoryConnectionType}" var="connectionType">
				                <c:if test="${list.connectionTypeCD eq connectionType.categorySeq}">
				                    <c:out value="${connectionType.categoryKO}"></c:out>
				                </c:if>
				            </c:forEach>
				            </a></td>
						<%-- <td><c:out value="${list.delNY}"></c:out></td> --%>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>">
						<c:forEach items="${listCategoryArrangementType}" var="arrangement">
				                <c:if test="${list.productArrangementCD eq arrangement.categorySeq}">
				                    <c:out value="${arrangement.categoryKO}"></c:out>
				                </c:if>
				            </c:forEach>
						</a>
						</td>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>">
						<c:forEach items="${listCategoryBrand}" var="brand">
				                <c:if test="${list.brandCD eq brand.categorySeq}">
				                    <c:out value="${brand.categoryKO}"></c:out>
				                </c:if>
				            </c:forEach>
						</a></td>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>"><c:out value="${list.productName}"></c:out></a></td>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>"><c:out value="${list.productHeight}"></c:out></a></td>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>"><c:out value="${list.productWidth}"></c:out></a></td>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>"><c:out value="${list.productLength}"></c:out></a></td>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>"><c:out value="${list.productWeight}"></c:out></a></td>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>"><c:out value="${list.productPrice}"></c:out></a></td>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>"><c:out value="${list.saleNY}"></c:out></a></td>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>"><c:out value="${list.productFinalPrice}"></c:out></a></td>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>"><fmt:formatDate value="${list.regDT}" pattern="yyyy-MM-dd HH:mm:ss" /></a></td>
						<td><a href="/productForm?productSeq=<c:out value="${list.productSeq}"></c:out>"><fmt:formatDate value="${list.modDT}" pattern="yyyy-MM-dd HH:mm:ss" /></a></td>
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
              <button class="btn btn-secondary" id="btnAdd" type="button" onclick="location.href='productForm'">추가</button>
           </div>
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
  <script type="text/javascript">
 	 $("#shbtn").on("click", function(){
	
 		// 자기 자신을 다시 한 번 호출해준다.
			$("form[name=formList]").attr("method", "post");
			$("form[name=formList]").attr("action", "/productList").submit();
 		 
 		 
// 		 alert("sdsada");
  	}
  );
 	goList = function(thisPage) {
 		$("input:hidden[name=thisPage]").val(thisPage);
 		$("form[name=formList]").attr("method", "post");
 		$("form[name=formList]").attr("action", "/productList").submit();
 	}

  </script>
  

</body>

</html>