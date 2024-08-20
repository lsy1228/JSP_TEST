<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문, 표현식</title>
</head>
<body>
	<!-- 아래 선언문은 전역의 성질을 지니고 있음 -->
	<%!
		int i = 10;
		String str = new String("abcde");
		
		public int add(int x, int y) {
			return x + y;
		}
	%>
	i 값 : <% out.println(i + "<br/>"); %>
	str 값 : <% out.println(str + "<br/>"); %>
	add(100, 500) 값 : <% out.println(add(100,500) + "<br/>"); %>
	
	
	
</body>
</html>