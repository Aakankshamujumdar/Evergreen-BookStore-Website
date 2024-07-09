<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register as a Customer</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript"
	src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>

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
		<h1 class="pageheading">Edit My Profile</h1>
	</div>

	<div align="center">
		<form action="update_profile" method="post" id="customerForm">
			<table>
				<tr>
					<td align="right">E-mail:</td>
					<td align="left"><b>${loggedCustomer.email}</b> (Cannot be
						changed)</td>
				</tr>
				<tr>
					<td align="right">First Name:</td>
					<td align="left"><input type="text" id="firstname"
						name="firstname" size="45" value="${loggedCustomer.firstname}" /></td>
				</tr>
				<tr>
					<td align="right">Last Name:</td>
					<td align="left"><input type="text" id="lastname"
						name="lastname" size="45" value="${loggedCustomer.lastname}" /></td>
				</tr>
				<tr>
					<td align="right">Phone Number:</td>
					<td align="left"><input type="text" id="phone" name="phone"
						size="45" value="${loggedCustomer.phone}" /></td>
				</tr>
				<tr>
					<td align="right">Address Line 1:</td>
					<td align="left"><input type="text" id="address1"
						name="address1" size="45" value="${loggedCustomer.addressLine1}" /></td>
				</tr>
				<tr>
					<td align="right">Address Line 2:</td>
					<td align="left"><input type="text" id="address2"
						name="address2" size="45" value="${loggedCustomer.addressLine2}" /></td>
				</tr>
				<tr>
					<td align="right">City:</td>
					<td align="left"><input type="text" id="city" name="city"
						size="45" value="${loggedCustomer.city}" /></td>
				</tr>
				<tr>
					<td align="right">State:</td>
					<td align="left"><input type="text" id="state" name="state"
						size="45" value="${loggedCustomer.state}" /></td>
				</tr>
				<tr>
					<td align="right">Zip Code:</td>
					<td align="left"><input type="text" id="zipcode"
						name="zipcode" size="45" value="${loggedCustomer.zipcode}" /></td>
				</tr>
				<tr>
					<td align="right">Country:</td>
					<td align="left"><select name="country" id="country">
							<c:forEach items="${mapCountries}" var="entry">
								<option value="${entry.value}"
									<c:if test='${loggedCustomer.country eq entry.value}'>selected='selected'</c:if>>${entry.key}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><i>(Leave password fields
							blank if you don't want to change password)</i></td>
				</tr>
				<tr>
					<td align="right">Password:</td>
					<td align="left"><input type="password" id="password"
						name="password" size="45" /></td>
				</tr>
				<tr>
					<td align="right">Confirm Password:</td>
					<td align="left"><input type="password" id="confirmPassword"
						name="confirmPassword" size="45" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
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
<script type="text/javascript">
	$(document)
			.ready(
					function() {

						$("#customerForm")
								.validate(
										{
											rules : {
												email : {
													required : true,
													email : true
												},
												fullname : "required",
												confirmPassword : {
													equalTo : "#password",
												},
												phone : "required",
												address : "required",
												city : "required",
												zipcode : "required",
												country : "required",
											},
											messages : {
												email : {
													required : "Please enter e-mail address",
													email : "Please enter valid e-mail address"
												},
												fullname : "Please enter full Name",
												confirmPassword : {
													equalTo : "Confirm password does nont match with the passsword"
												},
												phone : "Please enter phone number",
												address : "Please enter address",
												city : "Please enter city",
												zipcode : "Please enter zip code",
												country : "Please enter country",
											}
										});

						$("#buttonCancel").click(function() {
							history.go(-1);
						})
					});
</script>
</html>