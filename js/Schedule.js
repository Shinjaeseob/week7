var schedule_box = document.getElementById("schedule_box")

var schedule_contents = document.getElementById("schedule_contents")
var schedule_time = document.getElementById("schedule_time")
var schedule_contents_input = document.getElementById("schedule_contents_input")
var schedule_time_input = document.getElementById("schedule_time_input")

var schedule_time_warring = document.getElementById("schedule_time_warring")
var schedule_contents_warring = document.getElementById("schedule_contents_warring")

var schedule_add_time_input = document.getElementById("schedule_add_time")
var schedule_add_contents_input = document.getElementById("schedule_add_contents")
var schedule_add_time_warring = document.getElementById("schedule_add_time_warring")
var schedule_add_contents_warring = document.getElementById("schedule_add_contents_warring")


var schedule_contents_correction_btn = document.getElementById("schedule_contents_correction_btn")
var schedule_contents_correction_clear_btn = document.getElementById("schedule_contents_correction_clear_btn")
var schedule_contents_delete_btn = document.getElementById("schedule_contents_delete_btn")
var schedule_contents_cancell_btn = document.getElementById("schedule_contents_cancell_btn")

function change_contents(event) {
  schedule_contents_input.classList.remove("hide")
  schedule_time_input.classList.remove("hide")

  schedule_contents.classList.add("hide")
  schedule_time.classList.add("hide")

  schedule_contents_correction_clear_btn.classList.remove("hide")
  schedule_contents_cancell_btn.classList.remove("hide")

  schedule_contents_correction_btn.classList.add("hide")
  schedule_contents_delete_btn.classList.add("hide")
}

function save_contents(event) {

  var korean = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/
  var special_characters = /[!@#$%^*+=-]/
  
  var timeReg = /^(?=.*[0-9])(?=.*[:])(?=.*[0-9]).{1,20}/g
  var contentReg = /^(?=.*[가-힣a-zA-Z]).{2,30}/g

  if (!timeReg.test(schedule_time_input.value) || korean.test(schedule_time_input.value) || special_characters.test(schedule_time_input.value)) {  
    document.getElementById("schedule_time_warring").classList.add("show")
  }
  else {
    document.getElementById("schedule_time_warring").classList.remove("show")
  }

  if (!contentReg.test(schedule_contents_input.value)) {  
    document.getElementById("schedule_contents_warring").classList.add("show")
  }
  else {
    document.getElementById("schedule_contents_warring").classList.remove("show")
  }

  // schedule_contents_input.classList.add("hide")
  // schedule_time_input.classList.add("hide")

  // schedule_contents.classList.remove("hide")
  // schedule_time.classList.remove("hide")

  

  // schedule_contents_correction_clear_btn.classList.add("hide")
  // schedule_contents_cancell_btn.classList.add("hide")

  // schedule_contents_correction_btn.classList.remove("hide")
  // schedule_contents_delete_btn.classList.remove("hide")
}

function chage_contents_cancel(event) {
  schedule_contents_input.classList.add("hide")
  schedule_time_input.classList.add("hide")

  schedule_contents.classList.remove("hide")
  schedule_time.classList.remove("hide")

  schedule_contents_correction_clear_btn.classList.add("hide")
  schedule_contents_cancell_btn.classList.add("hide")

  schedule_contents_correction_btn.classList.remove("hide")
  schedule_contents_delete_btn.classList.remove("hide")
}

function delete_contents(event) {
  schedule_box.classList.add("hide")
}


function add_contents() {
  var korean = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/
  var special_characters = /[!@#$%^*+=-]/
  
  var timeReg = /^(?=.*[0-9])(?=.*[:])(?=.*[0-9]).{1,20}/g
  var contentReg = /^(?=.*[가-힣a-zA-Z]).{2,30}/g

  if (!timeReg.test(schedule_add_time_input.value) || korean.test(schedule_add_time_input.value) || special_characters.test(schedule_add_time_input.value)) {  
    document.getElementById("schedule_add_time_warring").classList.add("show")
  }
  else {
    document.getElementById("schedule_add_time_warring").classList.remove("show")
  }

  if (!contentReg.test(schedule_add_contents_input.value)) {  
    document.getElementById("schedule_add_contents_warring").classList.add("show")
  }
  else {
    document.getElementById("schedule_add_contents_warring").classList.remove("show")
  }
}


function onCalendar() {
  location.href = "Calendar.jsp"
}