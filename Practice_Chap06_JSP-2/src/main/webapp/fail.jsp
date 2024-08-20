<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	// get 방식으로 값을 받을 때 
	//String name = request.getParameter("name");
	//String score = request.getParameter("score");
	
	// post 방식으로 값을 받았을 때 
	String name = (String)pageContext.getSession().getAttribute("name");
	String score = (String)pageContext.getSession().getAttribute("score");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합격창</title>
</head>
<body>
	<h1><%=name %>님은 <%=score %>점으로 불합격하셨습니다.</h1> 
	<a href="score.html">점수 입력창으로 이동</a>
	

</body>
</html>