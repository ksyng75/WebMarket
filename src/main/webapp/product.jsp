<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="exceptionNoProductId.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/style.css"/>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
</head>
<body>
<%@ include file="/layout/menu.jspf"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
<%
     String id = request.getParameter("id");
     //Product product = productDAO.getProductById(id);
     ProductRepository dao = ProductRepository.getInstance();
     Product product = dao.getProductById(id);
%>
	<div class="container">
		<div class="row">
		    <div class="col-md-5">
		        <img src="${pageContext.request.contextPath}/upload/<%=product.getFilename()%>"style="width:100%">
		    </div>
			<div class="col-md-6">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%></p>
				<p>
					<b>상품 코드 : </b> <span class="badge badge-danger"><%=product.getProductId()%></span>
				</p>
				<p>
					<b>제조사</b> :
					<%=product.getManufacturer()%></p>
				<p>
					<b>분류</b> :
					<%=product.getCategory()%></p>
				<p>
					<b>재고 수</b> :
					<%=product.getUnitsInStock()%></p>
				<h4><%=product.getUnitPrice()%>원</h4>
				<p>
					<a href="#" class="btn btn-info">상품 주문 &raquo;</a> <a
						href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
				</p>
			</div>
		</div>
	</div>
<%@ include file="/layout/footer.jspf" %>	
</body>
</html>