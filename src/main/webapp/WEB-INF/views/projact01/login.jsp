<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Login(admin)</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

   <!-- Favicons -->
  <link href="/resources/portfolio/assets/img/favicon.png" rel="icon">
  <link href="/resources/portfolio/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resources/portfolio/assets/vendor/aos/aos.css" rel="stylesheet">
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
  <link href="/resources/portfolio/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/resources/portfolio/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/resources/portfolio/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/resources/portfolio/assets/css/style.css" rel="stylesheet">
</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="/" class="logo d-flex align-items-center w-auto">
                  <span class="d-none d-lg-block">포트폴리오 사이트로 돌아가기</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="text-center">Login</h5>
                  </div>

                  <form class="row g-3" name="formLogin">

                    <div class="col-12">
                      <label for="ID" class="form-label">ID</label>
                      <div class="input-group has-validation">
                        
                        <input type="text" name="keyID" class="form-control" id="keyID" >
                        <div class="invalid-feedback">Please enter your ID</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Password</label>
                      <input type="password" name="keyPW" class="form-control" id="keyPW" >
                      <div class="invalid-feedback">Please enter your password!</div>
                    </div>
                    <div class="col-12">
                      <button class="btn btn-primary w-100" id="btnLogin" type="button" >Login</button>
                      <!-- onclick="location.href='admin'" -->
                    </div>
                  </form>

                </div>
              </div>
            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script type="text/javascript">
  $("#btnLogin").on("click", function(){
//		if(validation() == false) return false;
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/login"
			/*  ,data : $("#formLogin").serialize()  */
			,data : { "keyID" : $("#keyID").val(),
				"keyPW" : $("#keyPW").val()} 
			,success: function(response) {
				if(response.rt == "success") {
					alert(response.rtMember.memberNickName);
					location.href = "/projact01";
				} else {
					alert("그런 회원 없습니다.");
				}
			} 
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});


	validation = function() {
//		 if(!checkNull($("#memberID"), $.trim($("#memberID").val()), "아이디를 입력해 주세요!")) return false;
//		 if(!checkNull($("#memberPW"), $.trim($("#memberPW").val()), "비밀번호를 입력해 주세요!")) return false;
	}
  </script>
  <!-- Vendor JS Files -->
  <script src="/resources/admin/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="/resources/admin/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="/resources/admin/assets/vendor/echarts/echarts.min.js"></script>
  <script src="/resources/admin/assets/vendor/quill/quill.min.js"></script>
  <script src="/resources/admin/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="/resources/admin/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="/resources/admin/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="/resources/admin/assets/js/main.js"></script>

</body>

</html>