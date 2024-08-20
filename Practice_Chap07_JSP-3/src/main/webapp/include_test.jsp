<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 액션태그 테스트</title>
</head>
<body>
 	<h1>include_test.jsp 페이지입니다.</h1>
 	
 	<!-- 앞서 include를 사용해봤다.
 	그때의 include는 페이지 지시자를 이용한 것이고 이번은 액션태크를 이용한 것 
 	차이점이라면, 페이지 지시자는 소스코드가 텍스트로 포함된다
 	그래서 조각코드를 삽입할 용도로 많이 사용 
 	flush 속성을 true로 설정하면 포함될 페이지로 이동하기 전에 버퍼를 다 비우고 포함될 페이지로 이동함 
 	그래서 통상 false로 설정해줘야 한다 
 	include 액션태그는 여러 페이지를 동적으로 하나의 페이지로 묶을 수 있으므로 각각의 페이지를 기능별로 모듈화가 가능하다  -->
 	<jsp:include page="include_test_sample.jsp" flush="false" />
	
	<h1>다시 include_test.jsp 페이지입니다.</h1>
	
</body>
</html>