<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Login</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>

<style>
	th, td {
		padding: 8px;
	}
	
	th {
		background: darkblue;
		color: cornsilk;
		font-size: larger;
	}
	
	button {
		padding: 6px;
		border-radius: 5px;
	}
	
	button[type=submit] {
		font-weight: bold;
	}
	
	button:hover {
		background-color: white;
		color: green;
		
	}
	
	input {
		border: 1px solid;
		border-radius: 4px;
		border-color: green;
		height: 20px;
	}
	.error {
		color: red;
		font-weight: bold;
		margin: 5px;
	}
	
	.message {
		font-style: italic;
		color: blue;	
	}
</style>
</head>
<body>
	<jsp:directive.include file="header.jsp" />

	<div align="center">
		<h2>Customer Login</h2>
		
		<c:if test="${message != null}">
			<div align="center">
				<h4 class="message">${message}</h4>
			</div>
		</c:if>
		
		<form id="loginForm" action="login" method="post">
			<table>
				<tr>
					<td>Email: </td>
					<td><input type="text" name="email" id="email" size="20" ></td>
				</tr>
				<tr>
					<td>Password: </td>
					<td><input type="password" name="password" id="password" size="20" ></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="submit">Login</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
		<jsp:directive.include file="footer.jsp" />
	
	<script type="text/javascript" >
	$(document).ready(function() {
		$("#loginForm").validate({
			rules:{
				email : {
					required : true,
					email : true,
					
				},
				password : "required",
			},
			messages : {
				email : {
					required : "please enter email",
					email : "Plaese enter an valid email address"
				},
				password: "please enter password",
			}
		})
	});
</script>
</body>
</html>