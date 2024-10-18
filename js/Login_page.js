var id_value = document.getElementById("id_value")
var pw_value = document.getElementById("pw_value")

// function onlogin() {
//   console.log(id_value.value.length)
//   console.log(pw_value.value.length)

//   id_warning = document.createElement("p")
//   document.getElementById("id_box").appendChild(id_warning)
//   id_warning.classList.add("id_warning")
//   id_warning.id = "id_warning"

//   if (id_value.value.length <= 7 || id_value.value.length >= 13) {  
//     id_warning.innerHTML = "아이디 입력값이 잘못되었습니다."
//   } else {
//     document.getElementById("id_warning").remove()
//   }
// }

function onlogin() {
  console.log(id_value.value.length)
  console.log(pw_value.value.length)

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
}