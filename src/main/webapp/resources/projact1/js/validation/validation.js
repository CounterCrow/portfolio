/*var filterEN = /^[a-zA-Z0-9]*$/;
var filterKO = /^[ㄱ-ㅎ가-힣a-zA-Z0-9]*$/;*/
/*
function validateAndSubmit(ID, btnID) {
	
  if ($.trim($(ID).val()) == "" || $.trim($(ID).val()) == null) {
    alert("데이터를 입력해주세요!");
    $(ID).focus();
  } else {
    // by pass
    $("form[name=form]").attr("action", $(btnID).attr("href")).submit();
  }
}
*/
function validateAndSubmit() {
  var memberID = $("#memberID").val();
  var memberNickName = $("#memberNickName").val();
  var memberPW = $("#memberPW").val();
  var reMemberPW = $("#reMemberPW").val();
  var memberName = $("#memberName").val();
  var memberDob = $("#memberDob").val();
  var memberEmail = $("#memberEmail").val();
  var memberPhone = $("#memberPhone").val();
  
   // 아이디 유효성 검사
  var idRegex = /^[a-zA-Z0-9]{6,12}$/;
  if (!idRegex.test(memberID)) {
    alert("ID는 영어 대소문자와 숫자를 포함하여 6~12자로 입력해주세요!");
    $("#memberID").focus();
    return false;
  }
  var nickNameRegex = /^[a-zA-Z0-9가-힣ㄱ-ㅎ]{3,12}$/;
  if (!nickNameRegex.test(memberNickName)) {
    alert("닉네임은 한글과영어 대소문자와 숫자를 포함하여 12자로 입력해주세요!");
    $("#memberNickName").focus();
    return false;
  }
  var pwRegex =/^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/;
  if (!pwRegex.test(memberPW)) {
    alert("패스워드는 특수문자를 포함한 6~20자를 입력해주세요.");
    $("#memberPW").focus();
    return false;
  }
  
  if (memberPW !== reMemberPW) {
    alert("PW와 PW 확인이 일치하지 않습니다!");
    $("#reMemberPW").focus();
    return false;
  }
  var nameRegex =  /^[ㄱ-ㅎ가-힣a-zA-Z0-9]*$/;
  if (!nameRegex.test(memberName)) {
    alert("이름 영어 대소문자와 한글만 가능합니다.");
    $("#memberName").focus();
    return false;
  }
  var dobRegex = /^[0-9]{6}$/;
  if (!dobRegex.test(memberDob)) {
    alert("주민번호 앞 6자리를 입력해주세요.");
    $("#memberDob").focus();
    return false;
  }
  var emailRegex = /^[a-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/;
   if (!emailRegex.test(memberEmail)) {
    alert("이메일 형식에 맞지 않습니다.");
    $("#memberEmail").focus();
    return false;
  }
  var phoneRegex = /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/;
   if (!phoneRegex.test(memberPhone)) {
    alert("번호만입력해주세요.");
    $("#memberPhone").focus();
    return false;
  }
  
  // 유효성 검사를 통과한 경우 폼을 제출합니다.
  $("form[name=form]").attr("action", "/signUpSave").submit();
}
