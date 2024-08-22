<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB select 결과</title>
</head>
<body>
	<%@include file ="dbconn.jsp" %>
	
	<table border ="1">
		<tr>
			<th width="300" align="center">아이디</th>
			<th width="300" align="center">비밀번호</th>
			<th width="300" align="center">이름</th>
		</tr>
		<%
			// select 한 결과를 받아오는 객체
			ResultSet rs = null;
			Statement stmt = null;
			
			try {
				String sql = "select * from members";
				stmt = connection.createStatement();
				rs = stmt.executeQuery(sql);
				
				// 가져올 행이 있느냐
				while(rs.next()) {
					// 해당하는 행의 컬럼값들을 각각 저장 
					String id = rs.getString("id");
					String pw = rs.getString("pw");
					String username = rs.getString("username");
					
			%>
			<tr>
				<td width="300" align="center"><%=id %></td>
				<td width="300" align="center"><%=pw %></td>
				<td width="300" align="center"><%=username %></td>
			</tr>
			<%
			
				}
				
				
			} catch(SQLException e) {
				out.println("members 테이블 select 오류가 발생하였습니다");
				out.println("SQLException : " + e.getMessage());
				e.printStackTrace();
			} finally {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(connection != null) connection.close();
			}
		%>
	</table>
	<a href="insert_form_statement.jsp">회원가입 창으로...</a>
</body>
</html>