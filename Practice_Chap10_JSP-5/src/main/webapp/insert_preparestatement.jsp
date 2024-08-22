<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 입력값 DB 저장하기</title>
</head>
<body>
	<!-- 접속할 DB 코드를 페이지 지시자 태그로 가져옴 -->
	<%@include file = "dbconn.jsp" %>
	
	<%
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String username = request.getParameter("username");
		
		// 쿼리문을 실행할 PreparedStatement 객체 선언
		PreparedStatement pstmt = null;
		
		try {
			// 쿼리문을 작성
			String sql = "insert into members(id, pw, username) values (?, ?, ?)";
			
			pstmt = connection.prepareStatement(sql);
			// 각각 ?에 해당하는 값들을 지정 
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, username);
			
			// 쿼리문을 DB에 날리는 코드 단, 쿼리문을 매개변수로 넣지 않도록 함 
			pstmt.executeUpdate();
			out.println("members 테이블에 정상적으로 삽입 성공했습니다");
			
		} catch(SQLException e) {
			out.println("members 테이블에 삽입 실패되었습니다.");
			out.println("SQLException : " + e.getMessage());
			e.printStackTrace();
		} finally {
			// 자원해제를 하는 습관을 반드시 들이자
			if(pstmt != null)
				pstmt.close();
			if(connection != null)
				connection.close();
		}
		
	%>
	<a href="select_preparestatement.jsp">회원조회 창으로...</a>
</body>
</html>