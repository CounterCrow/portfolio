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
function validateID(memberID) {
  var idRegex = /^[a-zA-Z0-9]{6,12}$/;
  return idRegex.test(memberID);
}

function validateNickname(memberNickname) {
  var nicknameRegex = /^[a-zA-Z0-9가-힣ㄱ-ㅎ]{3,12}$/;
  return nicknameRegex.test(memberNickname);
}

function validateDOB(memberDob) {
  var dobRegex = /^[0-9]{6}$/;
  return dobRegex.test(memberDob);
}

function validateEmail(memberEmail) {
  var emailRegex = /^[a-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/;
  return emailRegex.test(memberEmail);
}

function validatePhoneNumber(memberPhone) {
  var phoneRegex = /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/;
  return phoneRegex.test(memberPhone);
}

function validateAndSubmit() {
  var memberID = $("#memberId").val();
  var memberNickName = $("#memberNickName").val();
  var memberPW = $("#memberPW").val();
  var reMemberPW = $("#reMemberPW").val();
  var memberName = $("#memberName").val();
  var memberDob = $("#memberDob").val();
  var memberEmail = $("#memberEmail").val();
  var memberPhone = $("#memberPhone").val();

  if (!validateID(memberID)) {
    alert("ID는 영어 대소문자와 숫자를 포함하여 6~12자로 입력해주세요!");
    $("#memberId").focus();
    return false;
  }

  if (!validateNickname(memberNickName)) {
    alert("닉네임은 한글과 영어 대소문자와 숫자를 포함하여 12자로 입력해주세요!");
    $("#memberNickName").focus();
    return false;
  }

  if (!validateDOB(memberDob)) {
    alert("주민번호 앞 6자리를 입력해주세요.");
    $("#memberDob").focus();
    return false;
  }

  if (!validateEmail(memberEmail)) {
    alert("이메일 형식에 맞지 않습니다.");
    $("#memberEmail").focus();
    return false;
  }

  if (!validatePhoneNumber(memberPhone)) {
    alert("번호만 입력해주세요.");
    $("#memberPhone").focus();
    return false;
  }

  // Validations passed, submit the form
  $("form[name=form]").attr("action", "/signUpInsert").submit();
}

/*아이디 유효성검사*/
function validateCheckID() {
  var memberID = $("#memberId").val();
  if (!validateID(memberID)) {
    $("#memberId").addClass("is-invalid");
    $("#memberId").removeClass("is-valid");
    return false;
  } else {
    $.ajax({
      async: true,
      cache: false,
      type: "post",
      url: "/signUpChackID",
      data: { keyID: $("#memberId").val() },
      success: function (response) {
        if (response.rt == "success") {
          $("#memberId").addClass("is-valid");
          $("#memberId").removeClass("is-invalid");
        } else {
          $("#memberId").addClass("is-invalid");
          $("#memberId").removeClass("is-valid");
          $("#memberId").focus();
        }
      },
      error: function (jqXHR, textStatus, errorThrown) {
        alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
      },
    });
  }
}
