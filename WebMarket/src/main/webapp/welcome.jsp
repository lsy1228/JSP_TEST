<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body>
	<jsp:include page="menu.jsp"/>
	
	<%
		String greeting = "쇼핑몰에 온 것을 환영합니다.";
		String tagline = "Welcome to Web Market!!!";
	%>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%=greeting %></h1>
		</div>
	</div>
	
	<div class="container">
		<div class="text-center">
			<h3><%=tagline %></h3>
			<%	
				// 웹사이트의 리프레시 기능
				response.setIntHeader("Refresh", 5);
			 	Calendar calendar = Calendar.getInstance();
				int hour = calendar.get(Calendar.HOUR_OF_DAY);
				int minute = calendar.get(Calendar.MINUTE);
				int second = calendar.get(Calendar.SECOND);
				int am_pm = calendar.get(Calendar.AM_PM);
				String ampm = null;
				
				if(am_pm == 0) {
					ampm = "오전";
				} else {
					ampm = "오후";
				}
				
				String connectTime = hour + ":" + minute + ":" + second + " " + ampm;
				out.print("현재 접속 시간 : " + connectTime);
				
			%>
		</div>
		<hr>
	</div>
	
	<jsp:include page="footer.jsp"/>
	
	
	
	
	<%-- <h1><%= greeting %></h1>
	<h3><%= tagline %></h3> --%>
</body>
</html>