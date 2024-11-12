<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>

<%-- connector파일을 찾아오는 라이브러리 --%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>

<%-- 백엔드 통신 --%>

<%
    // JSP 문법을 적을 수 있는 공간

    request.setCharacterEncoding("utf-8");   // 받아온 값에 대한 인코딩 설정
    String idValue = request.getParameter("id");
    String pwValue = request.getParameter("pw");

    // DB 코드
    Class.forName("org.mariadb.jdbc.Driver");

    //DB에 연결하는 부분
    connection connect = DriverManager.getParameter("jdbc:mariadb://localhost:3306/web", "stageus", "1234") // 내가 사용할 계정이 들어간다

    // SQL 작성
    String sql = "INSERT INTO account (id,pw) VALUES (?, ?)";

    // SQL 전송 준비 상태로 만들기
    PreparedStatement query = connect.prepareStatement(sql);
    query.setString(1, idValue);
    query.setString(2, pwValue);

    // Query 전송
    query.executeUpdate();
%>

<%-- 프론트엔드 레이아웃 ( 위 데이터를 사용한 ) --%>

<script>
    alert("회원가입이 성공하였습니다 !")
    location.href = "Login.html"
</script>

<%-- jsp에서 프론트엔드로 넘어오는 값은 자료형이 무시된채로 넘어옴 --%>