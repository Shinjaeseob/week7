var name_value = document.getElementById("name_value")
var email_value = document.getElementById("email_value")

function onCurrection() {
  var korean = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/
  var special_characters = /[!@#$%^*+=-]/
  var special_characters_email = /[!#$%^*+=-]/
  var number = /[0-9]/
  
  var nameReg = /^(?=.*[가-힣a-zA-Z]).{2,20}$/
  var emailReg = /^(?=.*[a-zA-Z])(?=.*[@])(?=.*[0-9]).{8,20}$/

  if (!nameReg.test(name_value.value) || number.test(name_value.value) || special_characters.test(name_value.value)) {
    document.getElementById("name_warning").classList.add("show")
  }
  else {
    document.getElementById("name_warning").classList.remove("show")
  }

  if (!emailReg.test(email_value.value) || korean.test(email_value.value) || special_characters_email.test(email_value.value)) {  
    document.getElementById("email_warning").classList.add("show")
  }
  else {
    document.getElementById("email_warning").classList.remove("show")
  }
}

function onCancell() {
  location.href = "Mypage.jsp"
}