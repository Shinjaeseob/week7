var id_value = document.getElementById("id_value")
var pw_value = document.getElementById("pw_value")

function oncheck() {
  var korean = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/
  var special_characters = /[!@#$%^*+=-]/
  var uppercase = /[A-Z]/

  var idReg = /^(?=.*[a-z])(?=.*[0-9]).{8,20}$/
  var pwReg = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^*+=-]).{8,20}$/

  if (!idReg.test(id_value.value) || korean.test(id_value.value) || special_characters.test(id_value.value) || uppercase.test(id_value.value)) {
    document.getElementById("id_warning").classList.add("show")
  }
  else {
    document.getElementById("id_warning").classList.remove("show")
    location.href = "../action//Loginaction.jsp?id=" + id_value.value
  }

  if (!pwReg.test(pw_value.value) || korean.test(pw_value.value)) {
    document.getElementById("pw_warning").classList.add("show")
  }
  else {
    document.getElementById("pw_warning").classList.remove("show")
    location.href = "../action/Loginaction.jsp?pw=" + pw_value.value
  }

}

function onsignup() {
  location.href = "Signup.jsp"
}

function findID() {
  location.href = "Findid.jsp"
}

function findPW() {
  location.href = "Findpw.jsp"
}

function moveLoginlistpage() {
  location.href = "../action/Loginlistpage.jsp"
}