<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String strScore = request.getParameter("score");
	// post 방식으로 보낼때 값을 session에 저장하여 다른 페이지로 파라메터 값을 넘겨야 함 
	pageContext.getSession().setAttribute("name", name);
	pageContext.getSession().setAttribute("score", strScore);
	
	// get 방식으로 값을 보낼때 
	// 현재 페이지에서 다른 페이지로 넘기고 싶을때는 한글일 경우를 대비해서 아래와 같이 인코딩을 다시 함 
	//String encodeName = URLEncoder.encode(name, "UTF-8");
	int score = Integer.parseInt(request.getParameter("score"));	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(score < 0 || score > 100) {
			out.print("<h1>점수를 잘못 입력하셨습니다.</h1>");
			out.print("<a href=score.html>점수 입력창으로 이동</a>");
			return;
		}
	
	// 점수에 따라 페이지가 이동이 달라지는 코드 
		if(score >= 60) {
			System.out.println("scoreResult.jsp페이지를 지나갔습니다");
			// get 방식
			//response.sendRedirect("pass.jsp?name=" + encodeName + "&score=" + strScore);
			
			// post 방식 
			response.sendRedirect("pass.jsp");
		} else {
			System.out.println("scoreResult.jsp페이지를 지나갔습니다");
			// get 방식
			//response.sendRedirect("fail.jsp?name=" + encodeName + "&score=" + strScore);
			
			// post 방식 
			response.sendRedirect("fail.jsp");
		}
	%>

</body>
</html>