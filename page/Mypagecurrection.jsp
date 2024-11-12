<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mypage currection</title>
  <link rel="stylesheet" href="../css/Mypagecurrection.css">
</head>
<body>
  <section>
    <div class="name_box" id="name_box">
      <p class="name_title">Name</p>
      <input type="text" placeholder="영문 및 한글 조합 2~20자리" class="name_input" id="name_value" maxlength="20">
      <p id="name_warning" class="name_warning">영문 및 한글 조합 2~20자리를 입력하세요.</p>
    </div>
    <div class="email_box">
      <p class="email_title">Email</p>
      <input type="text" placeholder="영문 + 숫자 + @ + 이메일 주소 8~20자리" class="email_input" id="email_value" maxlength="20">
      <p id="email_warning" class="email_warning">영문 + 숫자 + @ + 올바른 이메일 주소 8~20자리를 입력하세요.</p>
    </div>

    <div class="rank">
      <div class="member_box">
        <input type="radio" class="member" name="rank" id="member" checked>
        <p class="member_txt">팀원</p>
      </div>
      <div class="leader_box">
        <input type="radio" class="leader" name="rank" id="leader">
        <p class="leader_txt">팀장</p>
      </div>
    </div>

    <div class="department">
      <div class="management_box">
        <input type="radio" class="management" name="department" id="management" checked>
        <p class="management_txt">경영팀</p>
      </div>
      <div class="design_box">
        <input type="radio" class="design" name="department" id="design">
        <p class="design_txt">디자인팀</p>
      </div>    
    </div>

    <div class="button_box">
      <input type="button" class="correction_btn" value="수정 완료" onclick="onCurrection()">
      <input type="button" class="sign_out_btn" value="회원 탈퇴" disabled>
      <input type="button" class="cancell_btn" value="취소" onclick="onCancell()">
    </div>
  </section>

  <script src="../js/Mypagecurrection.js"></script>
</body>
</html>