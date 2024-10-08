<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/> --%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" /> -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	
	<%
		ProductRepository dao = ProductRepository.getInstance();
		// 넘어온 상품 아이디 값을 받음 
		String id = request.getParameter("id");
		// 넘어온 상품 아이디 값을 이용해서 해당하는 Product 객체를 얻고 있음 
		Product product = dao.getProductById(id);
	
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=product.getFilename() %>" style="width: 100%"/>
			</div>
			<div class="col-md-6">
				<h3><%=product.getPname() %> </h3>
				<p><%=product.getDescription() %></p>
				<p><b>상품 코드 : </b><span class="badge badge-danger"><%=product.getProductId() %></span></p>
				<p><b>제조사 : </b><%=product.getManufacturer() %></p>
				<p><b>분류 : </b><%=product.getCategory() %></p>
				<p><b>재고 수량 : </b><%=product.getUnitsInStock() %></p>
				<h4><%=product.getUnitPrice() %>원</h4>
				
				<p><a href="#" class="btn btn-info">상품 주문 &raquo;</a>
				<a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
				
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>