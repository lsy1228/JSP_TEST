<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jsp 액션태그 중, useBean 태그를 이용하여 아래와 같이 설정하였다.
id는 자바에서의 참조변수와 같은 역할을 한다고 보면 된다.
class 속성은 student의 원본 클래스의 패키지명.클래스명 지정 해주어야 한다.
이렇게 해주면 자바에서 new 연산자로 객체(인스턴스)를 생성한 것과 동일한 개념이 된다. -->
<jsp:useBean id="student" class="sec01_exam.Student" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빈 예제-1</title>
</head>
<body>
	<h1>빈에 데이터 값들을 저장하였습니다.</h1><br>
	
	<!-- 속성(멤버변수)에 '*'는 빈객체의 속성 값을 기본값으로 저장하는 것 -->
	<jsp:setProperty property="*" name="student"/>
	
	<!-- jsp 액션태그 중 setProperty를 이용해서 name에는 bean의 id값, property는 빈의 속성(멤버변수),
	value는 실제 값을 저장한다.
	중요한 것은 setProperty가 student 클래스의 setter 메서드를 호출하는 태그라는 것이다. -->
	<jsp:setProperty property="name" 		name="student" value="신은혁"/>
	<jsp:setProperty property="age" 		name="student" value="13"/>
	<jsp:setProperty property="grade" 		name="student" value="6"/>
	<jsp:setProperty property="studentNum" 	name="student" value="15"/>
	
	<h1>빈에서 가져온 데이터 값입니다.</h1><br>
	<font size="10" color="blue">
		<!-- 여기서 중요한 것은 getProperty가 student 클래스의 getter 메서드를 호출하는 태그라는 것이다. -->
		이름 : <jsp:getProperty property="name" name="student"/><br>
		나이 : <jsp:getProperty property="age" name="student"/><br>
		학년 : <jsp:getProperty property="grade" name="student"/><br>
		번호 : <jsp:getProperty property="studentNum" name="student"/><br>
	</font>
	
</body>
</html>