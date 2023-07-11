<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회원가입</title>

    <%@ include file="../../include/P1link/projact1CSS.jsp"%>
    <%@ include file="../../include/P1link/jsPlugins.jsp"%>
</head>
<header>
    <div class="d-flex justify-content-center">
        <h1>CrowMarket</h1>
    </div>
</header>
<body>
     <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <form name="form" method="post" action="/com.crowmarket.app.infra.modules.signUp.signUpController">
                    <div class="wrap">
                        <h6 class="checkout__title">회원가입</h6>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>ID<span>*</span></p>
                                    <input type="text" id="memberID" name="memberID" >
                                    <button class="btn btn-warning" id="chackID">중복확인</button>
                                </div>
                                <div class="checkout__input">
                                    <p>닉네임<span>*</span></p>
                                    <input type="text" id="memberNickName" name="memberNickName">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>PW<span>*</span></p>
                                    <input type="password" id="memberPW" name="memberPW" >
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>PW확인<span>*</span></p>
                                    <input type="password" id="reMemberPW" name="reMemberPW">
                                </div>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>이름<span>*</span></p>
                                    <input type="text" id="memberName" name="memberName">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>생년월일<span>*</span></p>
                                    <input type="text" id="memberDob" name="memberDob" >
                                </div>
                            </div>
                        </div>   
                            <div class="checkout__input">
                                <p>Email<span>*</span></p>
                                <input type="text" id="memberEmail" name="memberEmail" >
                                <button class="btn btn-warning">인증</button>
                            </div>
                            <div class="checkout__input">
                                <p>전화번호<span>*</span></p>
                                <input type="text" id="memberPhone" name="memberPhone" >
                            </div>
                            <div class="checkout__input">
                                <p>주소</p>
                                <input type="text">
                            </div>
                        </div>
                        <button class="btn btn-secondary" id="btnSave"  type="button">회원가입</button>
                      </form>
         		   </div>
     		   </div>
    </section>
    
    <script type="text/javascript" src="/resources/projact1/js/validation/validation.js"> </script>
    <script type="text/javascript">
    
    $("#btnSave").on("click", function(){
    	validateAndSubmit();
    });
    </script>
    
</body>

</html>