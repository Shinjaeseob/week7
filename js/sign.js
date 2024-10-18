var name_value = document.getElementById("name_value")
var id_value = document.getElementById("id_value")
// var id_value = document.getElementById("id_value")
var pw_value = document.getElementById("pw_value")
var pw_check_value = document.getElementById("pw_check_value")
var email_value = document.getElementById("email_value")
var member_value = document.getElementById("member")
var leader_value = document.getElementById("leader")
var management_value = document.getElementById("management")
var development_value = document.getElementById("development")

function onsignup() {

  if (name_value.value.length <= 7 || name_value.value.length >= 21) {  
    document.getElementById("name_warning").classList.add("show")
  }
  else {
    document.getElementById("name_warning").classList.remove("show")
  }

  if (id_value.value.length <= 7 || id_value.value.length >= 13) {  
    document.getElementById("id_warning").classList.add("show")
  }
  else {
    document.getElementById("id_warning").classList.remove("show")
  }

  if (pw_value.value.length <= 5 || pw_value.value.length >= 13) {  
    document.getElementById("pw_warning").classList.add("show")
  }
  else {
    document.getElementById("pw_warning").classList.remove("show")
  }

  if (pw_check_value.value.length <= 5 || pw_check_value.value.length >= 13) {  
    document.getElementById("pw_check_warning").classList.add("show")
  }
  else {
    document.getElementById("pw_check_warning").classList.remove("show")
  }

  if (email_value.value.length <= 7 || email_value.value.length >= 21) {  
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

  if (management_value.checked || development_value.checked) {
    document.getElementById("department_radio_warning").classList.remove("show")
  } else {
    document.getElementById("department_radio_warning").classList.add("show")
  }
}