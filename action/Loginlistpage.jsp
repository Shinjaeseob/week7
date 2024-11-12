<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%-- 데이터베이스 탐색 라이브러리 --%>
<%@ page import="java.sql.DriverManager" %>

<%-- 데이터베이스 연결 라이브러리 --%>
<%@ page import="java.sql.Connection" %>

<%-- SQL 준비 및 전송 라이브러리 --%>
<%@ page import="java.sql.PreparedStatement" %>

<%-- 테이터베이스로부터 값 받아오기 라이브러리 --%>
<%@ page import="java.sql.ResultSet" %>

<%
  //Connector 파일 찾아오기
  Class.forName("org.mariadb.jdbc.Driver");

  // 디비 서버에 연결
  Connection connect = DriverManager.getConnection("jdbc:mariadb://localhost:3306/web", "stageus", "1234");

  // sql 준비
  String sql = "SELECT id, pw FROM member";
  PreparedStatement query = connect.prepareStatement(sql);

  // sql 전송
  ResultSet result = query.executeQuery();

  result.next();

  // Table에 존재하는 row의 개수만큼 화면에 반복 출력

  // js의 createElement를 써서 원래는 html 중복코드를 해결 했었음
  // --> 모든 페이지에 공통으로 들어가는 header나 aside 등

  // 우리 같은 경우는 jsp와 html의 스파게티 코드로 해결을 할 것

%>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <h1>회원목록</h1>

  <% while(result.next()) { %>

  <div>
    <span><%=result.getString("id")%></span>
    <span><%=result.getString("pw")%></span>
  </div>

  <% } %>

  <script>
  // 백엔드에서 만든 변수를 프론트엔드로 넘기면 row데이터가 넘어감
  </script>
</body>