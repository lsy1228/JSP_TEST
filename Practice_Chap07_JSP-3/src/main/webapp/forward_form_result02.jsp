<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼태그와 포워드 결과2</title>
</head>
<body>
	<h1>포워드 된 페이지(forward_form_result02.jsp)</h1>
	
	<!-- forward_form.jsp 파일에서 입력받은 부분을 출력 -->
	<table border="1" bgcolor="gray">
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("name") %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%=request.getParameter("age") %></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><%=request.getParameter("address") %></td>
		</tr>
		<tr>
			<!-- 전화번호의 경우는 forward_form_result01.jsp파일에서 param 액션태그로 넘어온 값 -->
			<td>전화번호</td>
			<td><%=request.getParameter("tel") %></td>
		</tr>
		</table>
		
		<!-- 폼 태그를 이용해서 데이터를 전송하면 URL이 바뀌고, forward 액션태그를 이용하면 URL 바뀌지 않음 
		forward 액션태그는 제어권을 포워딩되는 페이지로 완전히 넘기고 그 페이지가 끝나면 모든 응답을 종료함 -->
	
</body>
</html>