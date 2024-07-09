<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create New Customer</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>

<style type="text/css">
.pageheading {
	color: darkblue;
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

textarea {
	border: 1px solid;
	border-radius: 4px;
	border-color: green;
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
			<c:if test="${customer != null}">
				Edit Customer
			</c:if>
			<c:if test="${customer ==  null }">		
				Create New Customer
			</c:if>
		</h1>
	</div>

	<div align="center">
		<c:if test="${customer != null}">
			<form action="update_customer" method="post" id="customerForm">
				<input type="hidden" name="customerId" value="${customer.customerId}">
		</c:if>
		<c:if test="${customer == null }">
			<form action="create_customer" method="post" id="customerForm">
		</c:if>
			<jsp:directive.include file="../common/customer_form.jsp" />
		</form>
	</div>


	<jsp:directive.include file="footer.jsp" />
</body>
<script type="text/javascript">
	$(document).ready(function() {
		
		$("#customerForm").validate({
			rules:{
				email:{
					required: true,
					email: true
				},
				firstname : "required",
				lastname : "required",
				password: "required",
				confirmPassword: {
					required:true,
					equalTo:"#password",
				},
				phone: "required",
				address1 : "required",
				address2 : "required",
				city : "required",
				state : "required",
				zipcode : "required",
				country : "required",
			},
			messages : {
				email:{
					required: "Please enter e-mail address",
					email: "Please enter valid e-mail address"
				},
				firstname : "Please enter first Name",
				lastname : "Please enter last Name",
				password: "Please enter password",
				confirmPassword: {
					required:"Please enter confirm password",
					equalTo:"Confirm password does nont match with the passsword"
				},
				phone: "Please enter phone number",
				address1 : "Please enter address line 1",
				address2 : "Please enter address line 2",
				city : "Please enter city",
				state : "Please enter state",
				zipcode : "Please enter zip code",
				country : "Please enter country",
			}
		});
		
		$("#buttonCancel").click(function(){
			history.go(-1);
		})
	});
	
	
	</script>
</html>