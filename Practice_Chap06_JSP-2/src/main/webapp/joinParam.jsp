<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 결과 창</title>
</head>
<body>
	<%!
		String name, id, pw, major, gender, job;
		String[] hobby;
	%>
	
	<%
		request.setCharacterEncoding("utf-8");
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		major = request.getParameter("major");
		gender = request.getParameter("gender");
		job = request.getParameter("job");
		// 다중값이므로 getParameterValues() 사용
		hobby = request.getParameterValues("hobby");
	%>
	
	<%-- <%
		if(gender == "male") {
			gender = "남자";
		} else {
			gender = "여자";
		}
	%> --%>
	
	전송받은 이름 : <%=name %><br>
	전송받은 아이디 : <%=id %><br>
	전송받은 비밀번호 : <%=pw %><br>
	전송받은 전공 : <%=major %><br>
	전송받은 성별 : <%=gender %><br>
	전송받은 직업 : <%=job %><br>
	전송받은 취미 : <%=Arrays.toString(hobby) %><br>

</body>
</html>