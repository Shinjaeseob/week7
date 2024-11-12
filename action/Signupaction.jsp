<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%-- 데이터베이스 탐색 라이브러리 --%>
<%@ page import="java.sql.DriverManager" %>

<%-- 데이터베이스 연결 라이브러리 --%>
<%@ page import="java.sql.Connection" %>

<%-- SQL 준비 및 전송 라이브러리 --%>
<%@ page import="java.sql.PreparedStatement" %>

<%
  // jsp 영역

  // 앞 페이지에서 넘오온 값에 대한 인코딩 설정 ( 한글 안깨지게 )
  request.setCharacterEncoding("utf-8");

  // 값 받아오기
  String idValue = request.getParameter("id");
  String pwValue = request.getParameter("pw");
  String nameValue = request.getParameter("name");
  String emailValue = request.getParameter("email");

  // DB 통신

  //Connector 파일 찾아오기
  //만약 여기서 에러가 났다면, Connector 파일이 없음, 디비를 설치하지 않았음 / 디비 서버가 꺼져있음
  Class.forName("org.mariadb.jdbc.Driver");

  // 디비 서버에 연결
  Connection connect = DriverManager.getConnection("jdbc:mariadb://localhost:3306/web", "stageus", "1234");

  // sql 준비
  String sql = "INSERT INTO member(id,pw,name,email) VALUES(?, ?)";
  PreparedStatement query = connect.prepareStatement(sql);
  query.setString(1, idValue);
  query.setString(2, pwValue);
  query.setString(3, nameValue);
  query.setString(4, emailValue);

  // sql 전송
  query.executeUpdate();

%>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <h1>아이디 : <%=idValue%></h1>
  <h1>비밀번호 : <%=pwValue%></h1>

  <script>
  // 백엔드에서 만든 변수를 프론트엔드로 넘기면 row데이터가 넘어감
  // console.log("<%=idValue%>")
  </script>
</body>