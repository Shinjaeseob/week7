<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Find_pw</title>
  <link rel="stylesheet" href="../css/Findpw.css">
</head>
<body>
  <section>
    <div class="id_box" id="id_box">
      <p class="id_title">ID</p>
      <input type="text" placeholder="영문 + 숫자 조합 8~12자리" class="id_input" id="id_value" maxlength="12">
      <p id="id_warning" class="id_warning">영문 + 숫자 조합 8~12자리를 입력하세요.</p>
    </div>
    <div class="email_box">
      <p class="email_title">Email</p>
      <input type="text" placeholder="영문 + 숫자 + @ + 올바른 이메일 주소 8~20자리" class="email_input" id="email_value" maxlength="20">
      <p id="email_warning" class="email_warning">영문 + 숫자 + @ + 올바른 이메일 주소 8~20자리를 입력하세요.</p>
      <p id="email_check_warning" class="email_check_warning">등록된 이메일이 없습니다.</p>
    </div>
    <div class="button_box">
      <input type="button" class="sign_up_btn" value="조회" onclick="oncheck()">
      <input type="button" class="back_btn" value="Back" onclick="onBack()">
    </div>
  </section>

  <script src="../js/Findpw.js"></script>
</body>
</html>