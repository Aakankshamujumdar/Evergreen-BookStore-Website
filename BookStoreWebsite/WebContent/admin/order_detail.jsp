<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order Details - Evergreen Bookstore Administration</title>
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
		<h2 style="color: darkblue;">Details of Order ID:
			${order.orderId}</h2>
	</div>

	<c:if test="${message != null}">
		<div align="center">
			<h4 class="message">${message}</h4>
		</div>
	</c:if>
		<jsp:directive.include file="../common/common_order_detail.jsp" />
	<div align="center">
		<br /> <a href="edit_order?id=${order.orderId}">Edit the order</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="">delete the order</a>
	</div>

	<jsp:directive.include file="footer.jsp" />

	<script>
		function confirmDelete(reviewId) {
			if (confirm("Are you sure you want to delete the review with ID ? "
					+ reviewId)) {
				window.location = 'delete_review?id=' + reviewId;
			}
		}
	</script>
</body>
</html>