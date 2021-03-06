<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<%@ include file="/layout/menu.jspf"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">Login</h1>
		</div>
	</div>
	<div class="container" align="center">
	    <div class="col-md-4 col-md-offset-4">
	         <h3 class="form-signin-heading">Please sign in</h3>    
	         <%
	             String error =request.getParameter("error");
	             if(error != null){
	            	 out.println("<div class='alert alert-danger'>");
	            	 out.println("Please check your ID and PW");
	            	 out.println("</div>");
	             }
	         %>
	         <form class="form-signin" action="j_security_check" method="post">
	              <div class="form-group">
	                  <label for="inputUserName" class="sr-only">User Name</label>
	                  <input type="text" class="form-control" placeholder="ID" 
	                  name='j_username' required autofocus>
	              </div>
	              <div class="form-group">
	                  <label for="inputPassword" class="sr-only">User Name</label>
	                  <input type="password" class="form-control" placeholder="Password" 
	                  name='j_password' required>
	              </div>
	              <button class="btn btn btn-primary btn-success btb-block" type="submit">login</button>
	         </form>
	    </div>
	</div>
</body>
</html>