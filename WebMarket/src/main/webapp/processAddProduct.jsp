<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	// addProduct.jsp에서 사용자가 입력한 부분을 받아서 저장하고 있다 
	String productId = request.getParameter("productId");
	String pname = request.getParameter("pname");
	String unitPrice = request.getParameter("unitPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("category");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition = request.getParameter("condition");
	
	Integer price;
	long stock;
	
	// 단가(unitPrice)가 미입력 시
	if(unitPrice.isEmpty()) {
		price = 0;
	} else {
		// String을 숫자로 변환 
		price = Integer.valueOf(unitPrice);
	}
	
	// 재고수량(unitsInStock)가 미입력 시
	if(unitsInStock.isEmpty()) {
		stock = 0;
	} else {
		// String을 long 타입으로 변환 
		stock = Long.valueOf(unitsInStock);
	}
	
	ProductRepository dao = ProductRepository.getInstance();
	Product newProduct = new Product();
	
	// Product 객체에 사용자가 입력한 내용을 저장 
	newProduct.setProductId(productId);
	newProduct.setPname(pname);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	
	// ArrayList에 새상품 추가 
	dao.addProduct(newProduct);
	
	// 강제로 페이지 이동 시킴
	response.sendRedirect("products.jsp");
	
	
	

%>