<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
	<%
		// 페이지 모듈화를 위해서 연결 부분을 따로 파일로 만들었다 
		Connection connection = null;
		// mysql 서버에 접속하기 위한 경로 설정(jdbc:mysql -> 프로토콜, //localhost -> 도메인, 3306 : 포트번호, testdb -> 접속할 db명)	
		String url = "jdbc:mysql://localhost:3306/testdb";
		String user = "root";		// 접속 아이디
		String password = "dlthdud";	// 접속 비밀번호
		String driver = "com.mysql.jdbc.Driver";
		
		// 드라이버명을 주고 동적 객체를 생성한다 
		// 이 과정을 지나면 비로소 driver가 DriverManager에 등록이 되어 연결 객체를 얻을 수 있다 
		Class.forName(driver);
		connection = DriverManager.getConnection(url, user, password);
			
	%>