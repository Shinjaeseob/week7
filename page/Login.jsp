<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="../css/Login.css">
</head>
<body>
<input type="button" value="회원 목록 페이지" onclick="moveLoginlistpage()">
  <section>
    <div class="id_box" id="id_box">
      <p class="id_title">ID</p>
      <input type="text" placeholder="영문 + 숫자 조합 8~12자리" class="id_input" id="id_value" maxlength="12">
      <p id="id_warning" class="id_warning">영문 + 숫자 조합 8~12자리를 입력해주세요.</p>
    </div>
    <div class="pw_box">
      <p class="pw_title">Password</p>
      <input type="password" placeholder="영문 대소문자 + 숫자 + 특수문자 조합 8~20자리" class="pw_input" id="pw_value" maxlength="20">
      <p id="pw_warning" class="pw_warning">영문 대소문자 + 숫자 + 특수문자 조합 8~20자리를 입력해주세요.</p>
    </div>

    <div class="button_box">
      <input type="button" class="sign_up_btn" value="Sign Up" onclick="onsignup()">
      <input type="button" class="sign_in_btn" value="Sign In" onclick="oncheck()">
    </div>

    <div class="forgot_id_pw_box">
      <a href="#" class="forgot_id" onclick="findID()">Forgot id?</p>
      <a href="#" class="forgot_pw" onclick="findPW()">Forgot password?</p>
    </div>
    
  </section>
  
  <script src="../js/Login.js"></script>
</body>