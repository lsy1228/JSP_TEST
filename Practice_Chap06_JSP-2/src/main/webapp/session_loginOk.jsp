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
		if(id.equals("김연아") && pw.equals("12345")) {
			// 세션으로 로그인 정보를 저장 
			session.setAttribute("id", id);
			System.out.println("session_loginOk.jsp파일 거쳐감");
			
			// 아이디하고 비번이 맞다면 
			response.sendRedirect("session_loginSuccess.jsp");
		}
		else {
			// 로그인에 실패하면 loginFail.jsp 페이지로 이동
			response.sendRedirect("session_loginFail.jsp");
		}
	%>
</body>
</html>