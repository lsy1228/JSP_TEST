<!-- 페이지 지시자를 이용해서 isErrorPage 속성을 true로 설정
설정을 해줘야 exception 객체를 참조하여 예외 메시지 활용 가능 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 페이지</title>
</head>
<body>
	<%-- <%
		// 200이라는 값은 정상적인 페이지를 의미 
		// 아래와 같이 지정하지 않으면 컨테이너가 500으로 설정하는 경우가 많음 
		// 그러면 이 페이지가 아닌 500 페이지로 넘어감 
		response.setStatus(200);
		response.setCharacterEncoding("utf-8");
	%>
	
	에러 발생 <br>
	
	<%=exception.getMessage() %>
	 --%>
	 
	 <%
	 	response.setStatus(200);
		response.setCharacterEncoding("utf-8");
	 %>
	 
	 <h1>죄송합니다. 서비스 실행 중 오류가 발생했습니다.</h1>
	 <h1>잠시 후 다시 시도해주세요.</h1>
	 <img src="image/sap.jpeg">
	 
</body>
</html>