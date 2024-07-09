<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
	<c:if test="${category != null}">
		Edit Category
	</c:if>
	<c:if test="${category == null}">
		Create New Category
	</c:if>
</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>
<style type="text/css">
	
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
		<h2>
			<c:if test="${category != null}">
				Edit Category
			</c:if>
			<c:if test="${category ==  null }">		
				Create New Category
			</c:if>
		</h2>
	</div>
	
	<div align="center">
		<c:if test="${category != null}">
			<form action="update_category" method="post" id="categoryForm">
			<input type="hidden" name="categoryId" value="${category.categoryId}"> 
		</c:if>
		<c:if test="${category ==  null }">						
			<form action="create_category" method="post" id="categoryForm">
		</c:if>
			<table>
				<tr>
					<td align="right">Name:</td>
					<td align="left"><input type="text" id="name" name="name" size="20" value="${category.name}" /></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td colspan="2" align="center">	
						<button type="submit">Save</button>&nbsp;&nbsp;&nbsp;
						<button id="buttonCancel">Cancel</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	
	<jsp:directive.include file="footer.jsp" />
</body>
<script type="text/javascript" >
$(document).ready(function() {
	$("#categoryForm").validate({
		rules:{
			name : "required",
		},
		messages : {
			name : "please enter category name",
		}
	})
	
	$("#buttonCancel").click(function(){
			history.go(-1);
		})
});
</script>
</html>