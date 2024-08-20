<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
	<!-- 아래 h1 태그 부분은 잠깐 출력은 될 것임, 물론 육안으로 확인은 안됨
	왜? 아래코드에서 forward 액션태그를 이용하서 sub.jsp 페이지로 이동하기 때문 -->
	<h1>메인 페이지입니다</h1>
	<%
		System.out.println("sub.jsp 페이지 이동하기 전 메인 페이지입니다.");
	%>
	<jsp:forward page="sub.jsp"/>
</body>
</html>