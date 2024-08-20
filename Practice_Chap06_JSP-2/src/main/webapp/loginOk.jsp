<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%!
		String id, pw;
	%>
	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		// 지금은 DB를 설정하지 않아서 아래와 같이 설정
		// 추후 DB와 연동하고 난 뒤에는 아래와 같이 하는 코드를 변경 
		if(id.equals("abcde") && pw.equals("12345")) {
			// 쿠키의 이름은 id이고 값은 abcde가 됨
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(60);
			response.addCookie(cookie);
			
			// 로그인에 성공하면 loginSuccess.jsp 페이지로 이동
			response.sendRedirect("loginSuccess.jsp");
		}
		else {
			// 로그인에 실패하면 loginFail.jsp 페이지로 이동
			response.sendRedirect("loginFail.jsp");
		}
	%>
</body>
</html>