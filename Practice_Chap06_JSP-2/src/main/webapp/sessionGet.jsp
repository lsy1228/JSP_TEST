<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션값 확인</title>
</head>
<body>
	<%	
		// 지금은 하나하나의 name을 주고 value를 얻어서 출력하는 경우 
		// session의 getAttribute()의 반환타입은 Object 타입이라 강제로 다운캐스팅 함
		Object obj1 = session.getAttribute("abcde");
		Integer intValue = (Integer)obj1;
		out.println("abcde : " + intValue);
		
		Object obj2 = session.getAttribute("feed");
		String str2 = (String)obj2;
		out.println("feed : " + str2);
	%>
	<br>
	<%	
		out.print("==========================================<br>");
		
		String sName;
		String sValue;
		
		// getAttributeNames()의 반환값은 Enumeration<String> 열거형 제네릭 타입 
		// 여기서는 String으로 받도록 제네릭 타입 설정 
		// getAttributeNames()은 세션의 설정되어있는 모든 Name값을 다 얻어오는 것 
		Enumeration<String> en = session.getAttributeNames();
		
		while(en.hasMoreElements()) {
			sName = en.nextElement();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br>");
			out.println("sValue : " + sValue + "<br>");
		}
		
		// sessionID는 웹브라우저 하나당 생기는 유니크한 값, 서버에서 생성해줌 
		String sessionID = session.getId();
		out.println("sessionID : " + sessionID + "<br>");
		
		// session의 유효시간은 기본적으로 30분 
		// 설정을 바꾸고 싶다면 tomcat 폴더\conf\web.xml을 메모장으로 열어서 session부분의 값을 변경하면 됨 
		int sessionInterval = session.getMaxInactiveInterval();
		out.println("세션 유효시간(초) : " + sessionInterval);
		
		out.print("<br>==========================================<br>");
		
		// abcde 세션의 특정한 값을 삭제하는 코드 
		//session.removeAttribute("abcde");
		
		
		Enumeration<String> en1 = session.getAttributeNames();
		
		while(en1.hasMoreElements()) {
			sName = en1.nextElement();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br>");
			out.println("sValue : " + sValue + "<br>");
		}
		
		out.print("<br>==========================================<br>");
		
		// 세션의 모든 값을 지운다
		session.invalidate();
		
		// 유효한 세션 id가 있느냐?
		if(request.isRequestedSessionIdValid()) {
			out.print("session valid");
		} else {
			out.print("session invalid");
		}
		
		
	%>
</body>
</html>