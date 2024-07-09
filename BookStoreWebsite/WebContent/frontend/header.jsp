<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<style type="text/css">
#headermenu {
	display: table;
}

#headermenu div {
	display: table-cell;
	padding-right: 20px;
}

a:link {
	color: conflowerBlue;
	text-decoration: none;
}

a:visited {
	color: indigo;
}

a:hover {
	color: blue;
	text-decoration: underline;
}

a:active {
	color: red;
}

#headermenu a:link {
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
</style>
</head>

<div align="center">
	<div>
		<a href="${pageContext.request.contextPath}">
			<img src="https://res.cloudinary.com/duqoqrmum/image/upload/v1714294022/BookstoreLogo_bslf2e.png" />
		</a>
	</div>
	
	<div>
		<form action="search" method="get" >
			<input type="text" name="keyword" size="50" />
			<input type="submit" value="Search" />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<c:if test="${loggedCustomer == null}">
					<a href="login">Sign In</a> |
					<a href="register">Register</a> |
			</c:if>

			<c:if test="${loggedCustomer != null}">
					<a href="view_profile">Welcome, ${loggedCustomer.fullname}</a> |
					<a href="view_orders">My Orders</a> |
					<a href="logout">Logout </a>|
					
			</c:if>
			
			<a href="view_cart">Cart</a>
		</form>
	</div>
	<div>&nbsp;</div>
	<div>
		<c:forEach var="category" items="${ listCategory }" varStatus="status">
			<a href="view_category?id=${ category.categoryId }">
				<font size="+1"><b><c:out value="${ category.name }" /></b></font>
			</a>
			<c:if test="${ not status.last }">
				&nbsp; | &nbsp;
			</c:if>
		</c:forEach>
	</div>
</div>

</html>