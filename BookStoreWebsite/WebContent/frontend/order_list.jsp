<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Order history - Evergreen Bookstore</title>
<style type="text/css">
table {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 8px;
}

th {
	background: darkblue;
	color: cornsilk;
	font-size: larger;
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
		<h2>My Order History</h2>
	</div>

	<c:if test="${fn:length(listOrders) == 0}">
		<h3 align="center">You have not placed any orders.</h3>
	</c:if>

	<c:if test="${fn:length(listOrders) > 0}">
		<div align="center">
			<table border="1" cellpadding="5">
				<tr>
					<th>Index</th>
					<th>Order ID</th>
					<th>Quantity</th>
					<th>Total Amount</th>
					<th>Order Date</th>
					<th>Status</th>
					<th>Actions</th>
				</tr>
				<c:forEach var="order" items="${listOrders}" varStatus="status">
					<tr>
						<td>${status.index + 1}</td>
						<td>${order.orderId}</td>
						<td>${order.bookCopies}</td>
						<td><fmt:formatNumber value="${order.total}" type="currency" /></td>
						<td>${order.orderDate}</td>
						<td>${order.status}</td>

						<td><a href="show_order_detail?id=${order.orderId}">View Details</a>
							&nbsp;</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</c:if>

	<jsp:directive.include file="footer.jsp" />
</body>
</html>