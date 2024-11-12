<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Signup</title>
  <link rel="stylesheet" href="../css/Signup.css">
</head>
<body>
  <section>
    <div class="name_box">
      <p class="name_title">Name</p>
      <input type="text" placeholder="영문 및 한글 조합 2~20자리" class="name_input" id="name_value" maxlength="20">
      <p id="name_warning" class="name_warning">영문 및 한글 조합 2~20자리를 입력하세요.</p>
    </div>
    <div class="id_box">
      <div class="id_section">
        <p class="id_title">ID</p>
        <input type="button" value="중복 확인" class="id_check_btn">
      </div>  
      <input type="text" placeholder="영문 및 숫자 조합 8~12자리" class="id_input" id="id_value" maxlength="12">
      <p id="id_warning" class="id_warning">영문 및 숫자 조합 8~12자리를 입력하세요.</p>
      <p id="id_check_warning" class="id_check_warning">아이디 중복확인을 해주세요.</p>
      <p id="id_already_warning" class="id_already_warning">이미 존재하는 아이디 입니다.</p>
    </div>
    <div class="pw_box">
      <p class="pw_title">Password</p>
      <input type="password" placeholder="영문 대소문자 및 숫자 조합 8~20자리" class="pw_input" id="pw_value" maxlength="20">
      <p id="pw_warning" class="pw_warning">영문 대소문자 및 숫자 조합 8~20자리를 입력하세요.</p>
    </div>
    <div class="pw_check_box">
      <p class="pw_check_title">Password check</p>
      <input type="password" placeholder="입력하신 비밀번호와 동일하게 입력해주세요" class="pw_check_input" id="pw_check_value" maxlength="20">
      <p id="pw_check_warning" class="pw_check_warning">입력하신 비밀번호와 일치하지 않습니다</p>
    </div>
    
    <div class="email_box">
      <p class="email_title">Email</p>
      <input type="text" placeholder="영문 + 숫자 + @ + 올바른 이메일 주소 8~20자리" class="email_input" id="email_value" maxlength="20">
      <p id="email_warning" class="email_warning">영문 + 숫자 + @ + 올바른 이메일 주소 8~20자리를 입력하세요.</p>
    </div>

    <div class="rank">
      <div class="member_box">
        <input type="radio" class="member" name="rank" id="member">
        <p class="member_txt">팀원</p>
      </div>
      <div class="leader_box">
        <input type="radio" class="leader" name="rank" id="leader">
        <p class="leader_txt">팀장</p>
      </div>      
    </div>

    <p id="rank_radio_warning" class="rank_radio_warning">둘 중 반드시 하나를 선택하셔야 합니다</p>

    <div class="department">
      <div class="management_box">
        <input type="radio" class="management" name="department" id="management">
        <p class="management_txt">경영팀</p>
      </div>
      <div class="design_box">
        <input type="radio" class="design" name="department" id="design">
        <p class="design_txt">디자인팀</p>
      </div>          
    </div>

    <p id="department_radio_warning" class="department_radio_warning">둘 중 반드시 하나를 선택하셔야 합니다</p>
    
    <div class="button_box">
      <input type="button" class="sign_up_btn" value="Sign Up" onclick="oncheck()">
      <input type="button" class="back_btn" value="Back" onclick="onBack()">
    </div>
  </section>
  <input type="button" value="회원목록" onclick="movesignuplistpage()">

  <script src="../js/Signup.js"></script>
</body>