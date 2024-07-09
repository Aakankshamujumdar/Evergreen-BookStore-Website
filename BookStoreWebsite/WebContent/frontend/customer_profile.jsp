<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Profile - Online Books Store</title>
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
	<br>
		<h2>Welcome, ${loggedCustomer.fullname}</h2>
	<br>	
		<table >
			<tr>
				<td><b>E-mail Address:</b></td>
				<td>${loggedCustomer.email}</td>
			</tr>
			<tr>
				<td><b>First Name:</b></td>
				<td>${loggedCustomer.firstname}</td>
			</tr>
			<tr>
				<td><b>Last Name:</b></td>
				<td>${loggedCustomer.lastname}</td>
			</tr>
			<tr>
				<td><b>Phone Number:</b></td>
				<td>${loggedCustomer.phone}</td>
			</tr>
			<tr>
				<td><b>Address Line 1:</b></td>
				<td>${loggedCustomer.addressLine1}</td>
			</tr>
			<tr>
				<td><b>Address Line 2:</b></td>
				<td>${loggedCustomer.addressLine2}</td>
			</tr>
			<tr>
				<td><b>City:</b></td>
				<td>${loggedCustomer.city}</td>
			</tr>
			<tr>
				<td><b>State:</b></td>
				<td>${loggedCustomer.state}</td>
			</tr>
			<tr>
				<td><b>Zip Code:</b></td>
				<td>${loggedCustomer.zipcode}</td>
			</tr>
			<tr>
				<td><b>Country:</b></td>
				<td>${loggedCustomer.countryName}</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td colspan="2" align="center">
					<b>
						<a href="edit_profile">Edit My Profile</a>
					</b>
				</td>
			</tr>
		</table>
	</div>
	
	<jsp:directive.include file="footer.jsp" />

</body>
</html>