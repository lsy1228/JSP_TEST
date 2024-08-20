<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 요청 들어오는 page값을 저장 
	String pagefile = request.getParameter("page");
	if(pagefile == null) {
		pagefile = "newitem";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿 페이지</title>
<style>
	table {
		margin: auto;
		width: 1024px;
		height: 768px;
		color: gray;
		border: 2px red;
	}
</style>
</head>
<body>
	<table border="1">
		<tr> <!-- top 부분 -->
			<td height="15%" width="20" align="center">쇼핑몰 로고</td>
			<td height="15%" colspan="2" align="right">
				<jsp:include page="top.jsp"/>
			</td>
		</tr>
		<tr> <!-- left 부분 -->
			<td width="20%" align="right" valign="top" bgcolor="gray" ><br>
				<jsp:include page="left.jsp"/>
			</td>
			<!-- center 부분 -->
			<td colspan="2" align="center" bgcolor="blue">
				<jsp:include page='<%=pagefile+".jsp" %>'/>
			</td>
		</tr>
		<tr> <!-- bottom 부분 -->
			<td width="100%" height="10%" colspan="3" align="center">
				<jsp:include page="bottom.jsp"/>
			</td>
		</tr>
	</table>
</body>
</html>