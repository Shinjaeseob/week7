let today = new Date()   

let year = today.getFullYear() // 년도
let month = today.getMonth() + 1  // 월
let date = today.getDate()  // 날짜
let day = today.getDay()  // 요일

var year_num = document.getElementById("year")
year_num.innerHTML = year
var month_num = document.getElementById("month")
month_num.innerHTML = month

var year_value = parseInt(year_num.innerHTML)

window.onload=function() {
  
  for (var i = 0; i < 12; i++) {
    var month_btn = document.createElement("input")
    document.getElementById("btn_container").appendChild(month_btn)
    month_btn.classList.add("month_btn")
    month_btn.type = "button"
    month_btn.value = [i + 1]
    month_btn.id = "month_btn_" + [i + 1]
    month_btn.setAttribute("onclick", "thisbtn(event)")

    var int_month_btn = parseInt(month_btn.value)

    if (int_month_btn === month) {
      document.getElementById("month_btn_" + [i + 1]).classList.add("btn_on")
    }
  }

  for (var j = 0; j < 31; j++) {
    var schedule_box = document.createElement("div")
    document.getElementById("schedule_content").appendChild(schedule_box)
    schedule_box.classList.add("schedule_box")
    schedule_box.id = "schedule_box_" + [j + 1]
  }

  for (var l = 0; l < 31; l++) {
    var schedule_date = document.createElement("div")
    document.getElementById("schedule_box_" + [l + 1]).appendChild(schedule_date)
    schedule_date.classList.add("schedule_date")
    schedule_date.id = "schedule_date_" + [l + 1]
  }

  for (var k = 0; k < 31; k++) {
    var schedule_date_number = document.createElement("p")
    document.getElementById("schedule_date_" + [k + 1]).appendChild(schedule_date_number)
    schedule_date_number.classList.add("schedule_date_number")
    schedule_date_number.id = "schedule_date_number_" + [k + 1]
    document.getElementById("schedule_date_number_" + [k + 1]).innerHTML = k + 1
  }


  // jsp 작성
  // for (var o = 0; o < 31; o++) {
  //   var schedule_btn = document.createElement("div")
  //   document.getElementById("schedule_date_" + [o + 1]).appendChild(schedule_btn)
  //   schedule_btn.classList.add("schedule_btn")
  //   schedule_btn.id = "schedule_btn_" + [o + 1]
  // }

  // for (var u = 0; u < 31; u++) {
  //   var schedule_btn_txt = document.createElement("p")
  //   document.getElementById("schedule_btn_" + [u + 1]).appendChild(schedule_btn_txt)
  //   schedule_btn_txt.classList.add("schedule_btn_txt")
  // }

}

function mypage() {
  location.href = "Mypage.jsp"
}

function logout() {
  location.href = "Login.jsp"
}

function thisbtn(e) {
  e.preventDefault()


  for (var i = 0; i < 12; i++) {
    var btn_group = document.getElementById("month_btn_" + [i + 1])

    if (btn_group.classList.contains("btn_on")) {
      btn_group.classList.remove("btn_on")
      e.target.classList.add("btn_on")
      var month_value = parseInt(e.target.value)
      month_num.innerHTML = month_value
    }
  }
}

function left_year_btn(e) {
  e.preventDefault()
  year_value--
  year_num.innerHTML = year_value

}

function right_year_btn(e) {
  e.preventDefault()
  year_value++
  year_num.innerHTML = year_value
}


function toggle_on(e) {
  e.preventDefault()

  e.target.classList.remove("active")
  document.getElementById("toggle_on").classList.add("active")
}

function toggle_off(e) {
  e.preventDefault()

  e.target.classList.remove("active")
  document.getElementById("toggle_off").classList.add("active")
}

function onmodal() {
  location.href = "Schedule.jsp"
}
