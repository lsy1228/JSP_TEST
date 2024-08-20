<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 액션태그 결과 페이지</title>
</head>
<body>
	<h2>include_param_result.jsp 페이지입니다.</h2>
	<%
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
	%>
	
	넘어온 이름 : <%=name %><br>
	넘어온 나이 : <%=age %><br>
	
</body>
</html>