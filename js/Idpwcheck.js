var name_value = document.getElementById("name_value")
var id_value = document.getElementById("id_value")
var pw_value = document.getElementById("pw_value")
var pw_check_value = document.getElementById("pw_check_value")
var email_value = document.getElementById("email_value")
var member_value = document.getElementById("member")
var leader_value = document.getElementById("leader")
var management_value = document.getElementById("management")
var design_value = document.getElementById("design")

function oncheck() {
  var korean = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/
  var special_characters = /[!@#$%^*+=-]/
  var uppercase = /[A-Z]/
  var number = /[0-9]/

  var idReg = /^(?=.*[a-z])(?=.*[0-9]).{8,20}$/
  var pwReg = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^*+=-]).{8,20}$/
  var pwcheckReg = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/
  var nameReg = /^(?=.*[가-힣a-zA-Z]).{2,20}$/
  var emailReg = /^(?=.*[a-zA-Z])(?=.*[@])(?=.*[0-9]).{8,20}$/

  if (!nameReg.test(name_value.value) || number.test(name_value.value) || special_characters.test(name_value.value)) {
    document.getElementById("name_warning").classList.add("show")
  }
  else {
    document.getElementById("name_warning").classList.remove("show")
  }

  if (!idReg.test(id_value.value) || korean.test(id_value.value) || special_characters.test(id_value.value) || uppercase.test(id_value.value)) {
    document.getElementById("id_warning").classList.add("show")
  }
  else {
    document.getElementById("id_warning").classList.remove("show")
  }

  if (!pwReg.test(pw_value.value) || korean.test(pw_value.value)) {
    document.getElementById("pw_warning").classList.add("show")
  }
  else {
    document.getElementById("pw_warning").classList.remove("show")
  }

  if (!pwcheckReg.test(pw_check_value.value) || korean.test(pw_check_value.value)) {
    document.getElementById("pw_check_warning").classList.add("show")
  }
  else {
    document.getElementById("pw_check_warning").classList.remove("show")
  }

  if (!emailReg.test(email_value.value) || korean.test(email_value.value)) {  
    document.getElementById("email_warning").classList.add("show")
  }
  else {
    document.getElementById("email_warning").classList.remove("show")
  }

  if (member_value.checked || leader_value.checked) {
    document.getElementById("rank_radio_warning").classList.remove("show")
  } else {
    document.getElementById("rank_radio_warning").classList.add("show")
  }

  if (management_value.checked || design_value.checked) {
    document.getElementById("department_radio_warning").classList.remove("show")
  } else {
    document.getElementById("department_radio_warning").classList.add("show")
  }

}