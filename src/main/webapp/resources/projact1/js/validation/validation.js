function validateAndSubmit(ID, btnID) {
  if ($.trim($(ID).val()) == "" || $.trim($(ID).val()) == null) {
    alert("데이터를 입력해주세요!");
    $(ID).focus();
  } else {
    // by pass
    $("form[name=form]").attr("action", $(btnID).attr("href")).submit();
  }
}