<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create New User</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>
<style type="text/css">
	.pageheading {
		color:darkblue;
	}
	
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
</style>
</head>
<body>
	<jsp:directive.include file="header.jsp" />
	
	<div align="center">
		<h1 class="pageheading">
			<c:if test="${user != null}">
				Edit User
			</c:if>
			<c:if test="${user ==  null }">		
				Create New User
			</c:if>
		</h1>
	</div>
	
	<div align="center">
		<c:if test="${user != null}">
			<form action="update_user" method="post" id="userForm" >
			<input type="hidden" name="userId" value="${user.userId}"> 
		</c:if>
		<c:if test="${user ==  null }">						
			<form action="create_user" method="post" id="userForm">
		</c:if>
			<table>
				<tr>
					<td align="right">Email:</td>
					<td align="left"><input type="text" id="email" name="email" size="20" value="${user.email}" /></td>
				</tr>
				<tr>
					<td align="right">Full Name:</td>
					<td align="left"><input type="text" id="fullname" name="fullname" size="20" value="${user.fullName}" /></td>
				</tr>
				<tr>
					<td align="right">Password:</td>
					<td align="left"><input type="password" id="password" name="password" size="20" value="${user.password }"/></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td colspan="2" align="center">	
						<button type="submit">Save</button>&nbsp;&nbsp;&nbsp;
						<button id="buttonCancel" >Cancel</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	
	<jsp:directive.include file="footer.jsp" />
</body>
<script type="text/javascript" >
	$(document).ready(function() {
		$("#userForm").validate({
			rules:{
				email : {
					required : true,
					email : true,
					
				},
				fullname : "required",
				password : "required"
			},
			messages : {
				email : {
					required : "please enter email",
					email : "Plaese enter an valid email address"
				},
				fullname : "please enter full name",
				password: "please enter password"
			}
		})
		$("#buttonCancel").click(function(){
			history.go(-1);
		})
	});
</script>
</html>