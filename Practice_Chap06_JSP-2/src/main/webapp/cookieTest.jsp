<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 확인</title>
</head>
<body>
	<h1>쿠키 속성이 삭제된 것을 확인하는 cookieTest.jsp 페이지 입니다</h1>
	
	<%
		System.out.println("삭제된 쿠키의 값을 출력해봅니다");
		// 쿠키의 유효시간이 0으로 설정된 쿠키가 들어옴
		Cookie[] cookies = request.getCookies();
		
		// 확인해보니 현재 남아있는 쿠키 이름 : JSESSIONID -> 서버에서 생성한 것
		// 현재 남아있는 쿠키 값 : AD933155380A7C4EFB1CB9FF16B2F0B8 -> 서버에서 생성한 것 
		// 위의 이름과 값은 무시하면 됨 (이 부분은 항상 출력됨)
		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				out.println("현재 남아있는 쿠키 이름 : " + cookies[i].getName());
				out.println("현재 남아있는 쿠키 값 : " + cookies[i].getValue());
			}
		}
		
		// 여기서 반드시 기억해야 할 것은, 쿠키를 생성하고 response 객체에 탑재를 해야 함 
		// 그리고 변경이 있으면 반드시 response 객체에 재탑재를 해야 함 
		// 그래야 쿠키값이 일관성 있게 유지됨 
	%>
</body>
</html>