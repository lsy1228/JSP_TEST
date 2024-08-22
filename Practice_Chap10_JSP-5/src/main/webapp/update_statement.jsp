<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 데이터 수정</title>
</head>
<body>
	<%@include file="dbconn.jsp" %>
	
	<%
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String username = request.getParameter("username");
		
		// 쿼리문을 실행할 Statement 객체 선언
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select id, pw from members where id = '" + id +"'	";
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sql);
			
			// if(stmt != null) stmt.close();
			// 위의 코드를 삽입할 경우 에러 발생 
			// ResultSet의 결과물을 가지고 온 Statement 객체가 닫힐 경우에 ResultSet 객체도 함께 닫힘 
			
			if(rs.next()) {
				String rId = rs.getString("id");
				String rPw = rs.getString("pw");
				if(id.equals(rId) && pw.equals(rPw)) {
					sql = "update members set username = '"+username+"'	where id = 	'"+id+"'";
					
					if(stmt != null) stmt.close();
					
					// Statement 객체는 쿼리를 단 한번만 실행한다, 재사용을 하기 위해서는 반드시 connection 객체로부터 Statement 객체를 다시 얻어와야 함 
					stmt = connection.createStatement();
					stmt.executeUpdate(sql);
					out.println(rId + "님의 정보가 수정되었습니다.");
				} else {
					out.println("아이디와 비밀번호를 확인해주세요.");
				}
			} else {
				out.println("members 테이블에 일치하는 아이디가 없습니다.");
			}
			
		} catch(SQLException e) {
			out.println("SQLException : " + e.getMessage());
			e.printStackTrace();
		} finally {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(connection != null) connection.close();
		}
	
	%>
	<br/>
	<a href="select_statement.jsp">회원리스트 보기</a> &nbsp;&nbsp;&nbsp;
	<a href="insert_form_statement.jsp">회원가입 하기</a>
</body>
</html>