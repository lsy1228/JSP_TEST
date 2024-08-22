<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연결 테스트</title>
</head>
<body>
	<%
		Connection connection = null;
		// mysql 서버에 접속하기 위한 경로 설정(jdbc:mysql -> 프로토콜, //localhost -> 도메인, 3306 : 포트번호, testdb -> 접속할 db명)	
		String url = "jdbc:mysql://localhost:3306/testdb";
		String id = "root";		// 접속 아이디
		String pw = "dlthdud";	// 접속 비밀번호
		String driver = "com.mysql.jdbc.Driver";
		
		try {
			// 드라이버명을 주고 동적 객체를 생성한다 
			// 이 과정을 지나면 비로소 driver가 DriverManager에 등록이 되어 연결 객체를 얻을 수 있다 
			Class.forName(driver);
			connection = DriverManager.getConnection(url, id, pw);
			out.print("데이터베이스 연결 성공");
		} catch(Exception e) {
			out.print("데이터베이스 연결실패.<br>");
			out.print(e.getMessage());
			e.printStackTrace();
		} finally {
			if(connection != null) {
				connection.close();
			}
		}
		
		
		
		
		
	%>

</body>
</html>