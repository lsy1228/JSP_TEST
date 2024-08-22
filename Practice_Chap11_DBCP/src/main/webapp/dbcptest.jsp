<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DBCP 테스트</title>
</head>
<body>
	<%
		// Context 인터페이스는 서버에 있는 컨텍스트 패스를 얻는 것이다. 서버가 구동이 되면 이미 DBCP는 만들어졌기 때문에 가져다 쓰면 된다 
		// context의 lookup()를 사용하기 위해 InitialContext() 클래스로 대입 해준다.
		Context context = new InitialContext();
		DataSource dataSource = (DataSource)context.lookup("java:comp/env/" + "jdbc/dbconn");
		Connection conn = dataSource.getConnection();
		System.out.println("DBCP 연동완료");
		
		// 서버가 중지되었다가 다시 실행하면 얻어오는 Connection 객체는 다른 것을 알 수 있다.
		System.out.println("Connection 객체 : " + conn.toString());
		System.out.println("스레드명 : " + Thread.currentThread().getName());
	%>

</body>
</html>