<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>

<%@ page import="java.sql.ResultSet" %>

<%

    // DB 코드
    Class.forName("org.mariadb.jdbc.Driver");

    //DB에 연결하는 부분
    connection connect = DriverManager.getParameter("jdbc:mariadb://localhost:3306/web", "stageus", "1234") // 내가 사용할 계정이 들어간다

    // SQL 작성
    String sql = "SELECT * FROM member";

    // SQL 전송 준비 상태로 만들기
    PreparedStatement query = connect.prepareStatement(sql);

    // Query 전송
    ResultSet result = query.executeQuery();

    result.next() // 커서를 한줄 넘겨주는 코드
    result.getString("id") // 위에 값이랑 아래 값이랑 서로 다름
    result.getString("pw") // 메모리에 잠깐 저장된다.
    result.next()
    result.getString("id")
    result.getString("pw")

    while (result.next()) {
      result.getString("id")
      result.getString("pw")
    }
%>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>로그인</title>
</head>
<body>
  <%
    while(result.next()) {
  %>

  <div>
    <span><%=result.getString("id")%></span>
    <span><%=result.getString("pw")%></span>
  </div>


  <%
    }
  %>
</body>

<script>
  console.log("<%=id_value%>")
  console.log("<%=pw_value%>")
</script>