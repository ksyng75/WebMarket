<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/layout/menu.jspf"%>
<div class="jumbotron">
   <div class="container">
      <h2 class="alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
   </div>
</div>
<div class="container">
   <p><%=request.getRequestURI()%>?<%=request.getQueryString()%></p>
   <p><a href="products.jsp" class="btn btn-secondary">상품 목록&raquo;</a></p>
</div>
</body>
</html>