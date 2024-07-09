<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Order - Evergreen Bookstore Administration</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript"
	src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>
<style type="text/css">
th, td {
	padding: 8px;
}

table {
	border: 1px solid black;
	border-collapse: collapse;
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
		<h2 style="color: darkblue;">Edit Order ID: ${order.orderId}</h2>
	</div>

	<c:if test="${message != null}">
		<div align="center">
			<h4 class="message">${message}</h4>
		</div>
	</c:if>

	<form action="update_form" method="post" id="orderForm">
		<div align="center">
			<table>
				<h2 style="color: darkblue;">Order OverView:</h2>
				<tr>
					<td><b>Ordered By:</b></td>
					<td>${order.customer.fullname}</td>
				</tr>
				<tr>
					<td><b>Order Date:</b></td>
					<td>${order.orderDate}</td>
				</tr>
				<tr>
					<td><b>Payment Method:</b></td>
					<td><select name="paymentMethod">
							<option value="Cash On Delivery"
								<c:if test="${order.paymentMethod eq 'Cash On Delivery'}">selected='selected'</c:if>>Cash
								On Delivery</option>
							<option value="paypal"
								<c:if test="${order.paymentMethod eq 'paypal'}">selected='selected'</c:if>>Paypal
								or Credit Card</option>
					</select></td>
				</tr>
				<tr>
					<td><b>Order Status:</b></td>
					<td><select name="orderStatus">
							<option value="Processing"
								<c:if
									test="${order.status eq 'Processing'}">selected = 'selected'</c:if>>
								Processing</option>
							<option value="Shipping"
								<c:if
									test="${order.status eq 'Shipping'}">selected = 'selected'</c:if>>Shipping
							</option>
							<option value="Delivered"
								<c:if
									test="${order.status eq 'Delivered'}">selected = 'selected'</c:if>>Delivered
							</option>
							<option value="Completed"
								<c:if
									test="${order.status eq 'Completed'}">selected = 'selected'</c:if>>Completed
							</option>
							<option value="Cancelled"
								<c:if
									test="${order.status eq 'Cancelled'}">selected = 'selected'</c:if>>Cancelled
							</option>
					</select></td>
				</tr>
			</table>
			<h2 style="color: darkblue;">Recipient Name:</h2>
			<table>
				<tr>
					<td><b>First Name:</b></td>
					<td><input type="text" name="firstname" id="firstname"
						value="${order.firstname}" size="45" /></td>
				</tr>
				<tr>
					<td><b>Last Name:</b></td>
					<td><input type="text" name="lastname" id="lastname"
						value="${order.lastname}" size="45" /></td>
				</tr>
				<tr>
					<td><b>Phone:</b></td>
					<td><input type="text" name="phone" id="phone"
						value="${order.phone}" size="45" /></td>
				</tr>
				<tr>
					<td><b>Address Line 1:</b></td>
					<td><input type="text" name="address1" id="address1"
						value="${order.addressLine1}" size="45" /></td>
				</tr>
				<tr>
					<td><b>Address Line 2:</b></td>
					<td><input type="text" name="address2" id="address2"
						value="${order.addressLine2}" size="45" /></td>
				</tr>
				<tr>
					<td><b>City:</b></td>
					<td><input type="text" name="city" id="city"
						value="${order.city}" size="45" /></td>
				</tr>
				<tr>
					<td><b>State:</b></td>
					<td><input type="text" name="state" id="state"
						value="${order.state}" size="45" /></td>
				</tr>
				<tr>
					<td><b>Zipcode:</b></td>
					<td><input type="text" name="zipcode" id="zipcode"
						value="${order.zipcode}" size="45" /></td>
				</tr>
				<tr>
					<td><b>Country:</b></td>
					<td><select name="country" id="country">
							<c:forEach items="${mapCountries}" var="entry">
								<option value="${entry.value}"
									<c:if test='${order.country eq entry.value}'>selected='selected'</c:if>>${entry.key}</option>
							</c:forEach>
					</select></td>
				</tr>
			</table>
		</div>

		<div align="center">
			<h2>Ordered Books</h2>
			<table border="1">
				<tr>
					<th>Index</th>
					<th>Book Title</th>
					<th>Author</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Subtotal</th>
					<th></th>
				</tr>
				<c:forEach items="${order.orderDetails}" var="orderDetail"
					varStatus="status">
					<tr>
						<td>${status.index + 1}</td>
						<td>${orderDetail.book.title}</td>
						<td>${orderDetail.book.author}</td>
						<td><input type="hidden" name="price"
							value="${orderDetail.book.price}" /> <fmt:formatNumber
								value="${orderDetail.book.price}" type="currency" /></td>
						<td><input type="hidden" name="bookId"
							value="${orderDetail.book.bookId}" /><input type="text"
							name="quantity${status.index + 1}"
							value="${orderDetail.quantity}" size="5" /></td>
						<td><fmt:formatNumber value="${orderDetail.subtotal}"
								type="currency" /></td>
						<td><a
							href="remove_book_from_order?id=${orderDetail.book.bookId}">Remove</a></td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="7" align="right"><p>
							Subtotal:
							<fmt:formatNumber value="${order.subtotal}" type="currency" />
						</p>
						<p>
							Tax: <input size="5" name="tax" id="tax" type="text"
								value="${order.tax}" />
						</p>
						<p>
							Shipping Fee: <input size="5" name="shippingFee" id="shipingFee"
								type="text" value="${order.shippinFee}" />
						</p>
						<p>
							TOTAL:
							<fmt:formatNumber value="${order.total}" type="currency" />
						</p></td>
				</tr>
			</table>
		</div>
		<div align="center">
			<br /> <a href="javascript:showAddBookPopup()"><b>Add Books</b></a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit"
				value="Save" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
				type="button" value="Cancel"
				onclick="javascript:window.location.href ='list_order';" />
		</div>
	</form>
	<jsp:directive.include file="footer.jsp" />

	<script>
		function showAddBookPopup() {
			window.open('add_book_form', '_blank', 'width=300', 'height=200',
					'top=100', 'left=100')
		}

		$(document).ready(function() {
			$("#orderForm").validate({
				rules : {
					firstname : "required",
					lastname : "required",
					phone : "required",
					address1 : "required",
					address2 : "required",
					city : "required",
					state : "required",
					zipcode : "required",
					country : "required",
					
					<c:forEach items="${order.orderDetails}" var="book" varStatus = "status">
						quantity${status.index+1}:{
							required : true, number : true, min : 1
						},
					</c:forEach>
					
					shippingFee: {required : true, number : true, min : 0},
					tax: {required : true, number : true, min : 0},
				},
				messages : {
					firstname : "please enter first name",
					lastname : "please enter last name",
					phone : "please enter phone number",
					address1 : "please enter address line 1",
					address2 : "please enter address line 2",
					city : "please enter city",
					state : "please enter state",
					zipcode : "please enter zipcode",
					country : "please enter country",
					
					<c:forEach items="${order.orderDetails}" var="book" varStatus = "status">
						quantity${status.index+1}:{
						required : "please enter quantity", 
						number : "Quantity must be a number", 
						min : "Quantity must be greater than 0"
					},
					</c:forEach>
					
					shippingFee: {
						required : "please enter shipping fee",
						number : "shiping fee must be a number",
						min : "shipping must be equal or greater than 0"
					},
					tax: {
						required : "please enter tax",
						number : "tax must be a number",
						min : "tax be equal or greater than 0"
					},
				}
			})
		});
	</script>
</body>
</html>