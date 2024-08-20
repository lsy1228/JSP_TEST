<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제</title>
</head>
<body>
	<h1>쿠키 속성을 삭제하는 cookieDel.jsp 페이지 입니다</h1>
	
	<%
		System.out.println("서버에서 쿠키를 삭제하였습니다");
		
		Cookie[] cookies = request.getCookies();
		for(int i=0; i<cookies.length; i++) {
			String name = cookies[i].getName();
			String value = cookies[i].getValue();
			if(name.equals("abcde")) {
				out.println("cookies[" + i + "] name : " + name);
				out.println("<br>");
				out.println("cookies[" + i + "] value : " + value);
				// 유효기간을 0으로 설정하면 삭제하는 것과 같은 효과 
				cookies[i].setMaxAge(0);
				
				// 위의 코드에서 쿠키의 수정이 있었으므로 다시 response 객체에 쿠키를 추가해줘야 함 
				response.addCookie(cookies[i]);
			}
		}
	%>
	
	<br><br>
	<a href="cookieTest.jsp">쿠키 확인 페이지 이동</a>
</body>
</html>