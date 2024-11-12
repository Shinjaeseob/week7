<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Schedule</title>
  <link rel="stylesheet" href="../css/Schedule.css">
</head>
<body>
  <section>

    <div class="schedule_container">

      <div class="schedule_box" id="schedule_box">
        <div class="schedule_txt_box">
          <p class="schedule_time" id="schedule_time">09:00</p>
          <input type="text" placeholder="09:00" class="schedule_time_input hide" id="schedule_time_input" maxlength="20">
          <p id="schedule_contents" class="schedule_contents">오전 회의</p>
          <input type="text" placeholder="오전 회의" class="schedule_contents_input hide" id="schedule_contents_input" maxlength="30">
        </div>  
        <div class="schedule_correction_btn_box">
          <input type="button" value="수정" class="schedule_contents_correction_btn" onclick="change_contents(event)" id="schedule_contents_correction_btn">
          <input type="button" value="수정 완료" class="schedule_contents_correction_clear_btn hide" onclick="save_contents(event)" id="schedule_contents_correction_clear_btn">
          <input type="button" value="삭제" class="schedule_contents_delete_btn" onclick="delete_contents(event)" id="schedule_contents_delete_btn">
          <input type="button" value="취소" class="schedule_contents_cancell_btn hide" onclick="chage_contents_cancel(event)" id="schedule_contents_cancell_btn">
        </div>     
      </div>

      <p class="schedule_time_warring" id="schedule_time_warring">숫자 조합 1~20자리를 입력해주세요.</p>
      <p class="schedule_contents_warring" id="schedule_contents_warring">한글 및 영문 조합 2~30자리를 입력해주세요.</p>
  
      
    </div>
    
    

    <div class="schedule_add_time_box">

        <input type="text" placeholder="일정의 시간 입력" class="schedule_add_time" id="schedule_add_time" maxlength="20">

        <div class="schedule_add_btn_box">
          <input type="button" class="schedule_add_time_btn" value="일정 추가" onclick="add_contents()">
          <input type="button" class="schedule_add_time_cancell_btn" value="취소" onclick="add_contents_cancel()">
        </div> 

    </div>

    <p class="schedule_add_time_warring" id="schedule_add_time_warring">숫자 조합 1~20자리를 입력해주세요.</p>

    <div class="schedule_add_contents_box">

        <input type="text" placeholder="일정의 내용 입력" class="schedule_add_contents" id="schedule_add_contents" maxlength="30">
        
        <input type="button" class="calendar_btn" value="Back" onclick="onCalendar()">
        
    </div>

    <p class="schedule_add_contents_warring" id="schedule_add_contents_warring">한글 및 영문 조합 2~30자리를 입력해주세요.</p>
      
  </section>

  <script src="../js/Schedule.js"></script>
</body>
</html>