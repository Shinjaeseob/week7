var id_value = document.getElementById("id_value")
var email_value = document.getElementById("email_value")

function oncheck() {

  var korean = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/
  var special_characters = /[!@#$%^*+=-]/
  var special_characters_email = /[!#$%^*+=-]/
  var uppercase = /[A-Z]/
  
  var idReg = /^(?=.*[a-z])(?=.*[0-9]).{8,20}/g
  var emailReg = /^(?=.*[a-zA-Z])(?=.*[@}])(?=.*[0-9]).{8,20}/g

  if (!idReg.test(id_value.value) || korean.test(id_value.value) || special_characters.test(id_value.value) || uppercase.test(id_value.value)) {
    document.getElementById("id_warning").classList.add("show")
  }
  else {
    document.getElementById("id_warning").classList.remove("show")
  }

  if (!emailReg.test(email_value.value) || korean.test(email_value.value) || special_characters_email.test(email_value.value)) {  
    document.getElementById("email_warning").classList.add("show")
  }
  else {
    document.getElementById("email_warning").classList.remove("show")
  }
}

function onBack() {
  location.href = "Login.jsp"
}