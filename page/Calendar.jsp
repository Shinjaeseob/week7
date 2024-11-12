<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>calendar</title>
  <link rel="stylesheet" href="../css/Calendar.css">
</head>
<body>
  <header>
    <!-- 좌측 상단 메뉴 -->
    <div class="account_box">
      <div class="my_page">
        <p class="my_page_txt" onclick="mypage()">Mypage</p>
      </div>
      <div class="log_out">
        <p class="log_out_txt" onclick="logout()">Log out</p>
      </div>
    </div>
    <!-- 중앙 상단 메뉴 -->
    <div class="year_box">
      <div class="left_btn" onclick="left_year_btn(event)">
        <img class="left_btn_img" src="../img/left_btn.png" alt="left_btn">
      </div>
      <div class="year_txt_box">
        <p class="year_txt" id="year"></p>
      </div>
      <div class="right_btn" onclick="right_year_btn(event)">
        <img class="right_btn_img" src="../img/right_btn.png" alt="right_btn">
      </div>
    </div>
    <!-- 우측 상단 메뉴 -->
    <div class="manager_btn_box">
        <!-- <img class="toggle_off active" src="../img/toggle_off.png" alt="toggle_off" onclick="toggle_on(event)" id="toggle_off">

        <img class="toggle_on" src="../img/toggle_on.png" alt="toggle_on" onclick="toggle_off(event)" id="toggle_on"> -->
    </div>

  </header>
  <section>
    <div class="month_form">
      <div class="month_btn_box" id="btn_container">
        
      </div>   
      <div class="month_txt_box">
        <p class="month_txt" id="month"></p>
      </div>
    </div>

    

    <div class="schedule_content" id="schedule_content">
      <div class="schedule_box" id="schedule_box">
        <div class="schedule_date" id="schedule_date">
          <p class="schedule_date_number" id="schedule_date_number">
            1
          </p>
        </div>
        <input type="button" value="3개의 일정" class="schedule_btn" onclick="onmodal()">
      </div>
      
    </div>
  </section>
  <script src="../js/Calendar.js"></script>
</body>
</html>