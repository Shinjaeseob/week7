<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mypage</title>
  <link rel="stylesheet" href="../css/Mypage.css">
</head>
<body>
  <section>
    <div class="name_box" id="name_box">
      <p class="name_title">Name</p>
      <p id="name_account" class="name_account">ooo</p>
    </div>
    <div class="email_box">
      <p class="email_title">Email</p>
      <p id="email_account" class="email_account">zxc422523@naver.com</p>
    </div>

    <div class="rank">
      <div class="member_box">
        <input type="radio" class="member_disabled" name="rank" id="member" checked>
        <p class="member_disabled_txt">팀원</p>
      </div>
      <div class="leader_box">
        <input type="radio" class="leader_disabled" name="rank" id="leader" disabled>
        <p class="leader_disabled_txt">팀장</p>
      </div>
    </div>

    <div class="department">
      <div class="management_box">
        <input type="radio" class="management_disabled" name="department" id="management" checked>
        <p class="management_disabled_txt">경영팀</p>
      </div>
      <div class="design_box">
        <input type="radio" class="design_disabled" name="department" id="design" disabled>
        <p class="design_disabled_txt">디자인팀</p>
      </div>    
    </div>

    <div class="button_box">
      <input type="button" class="correction_btn" value="수정" onclick="onCurrection()">
      <input type="button" class="sign_out_btn" value="회원 탈퇴" onclick="onSignout()">
      <input type="button" class="calendar_btn" value="Back" onclick="onCalendar()">
    </div>
  </section>

  <script src="../js/Mypage.js"></script>
</body>
</html>