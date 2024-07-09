<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${ book.title }-OnlineBooksStore</title>

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
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
	<jsp:directive.include file="header.jsp" />

	<div align="center">
		<table width="80%">
			<tr style="height: 30px">
				<td colspan="3" align="left">
					<h2>${book.title}</h2>by ${book.author}
				</td>
			</tr>
			<tr>
				<td rowspan="2"><img
					src="data:image/jpg;base64, ${book.base64Image}" width="240"
					height="300" /></td>
				<td valign="top" align="left"><c:forTokens
						items="${book.ratingStars}" delims="," var="star">
						<c:if test="${star eq 'on'}">
							<img
								src="https://res.cloudinary.com/duqoqrmum/image/upload/v1713615709/rating_on_qdv8g7.png">
						</c:if>
						<c:if test="${star eq 'off'}">
							<img
								src="https://res.cloudinary.com/duqoqrmum/image/upload/v1713615709/rating_off_kjiehk.png">
						</c:if>
						<c:if test="${star eq 'half'}">
							<img
								src="https://res.cloudinary.com/duqoqrmum/image/upload/v1713615709/rating_half_i4boex.png">
						</c:if>
					</c:forTokens><a href="#reviews">${fn:length(book.reviews)} Reviews</a></td>
				<td valign="top" rowspan="2" width="20%">
					<h2>₹ ${book.price}</h2> </br> </br>
					<button id="buttonAddToCart">Add To Cart</button>
				</td>
			</tr>
			<tr>
				<td valign="top" style="text-align: justify;">
					${book.description}</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><h2>
						<a id="reviews">Customer Reviews</a>
					</h2></td>
				<td colspan="2" align="center">
					<button id="buttonWriteReview">Write a Customer Review</button>
				</td>
			</tr>

			<tr>
				<td colspan="3">
					<table border="0">
						<c:forEach items="${book.reviews}" var="review">
							<tr>
								<td><c:set var="numberOfStarsOn" value="${review.rating}" />
									<c:forEach var="i" begin="1" end="5">
										<c:choose>
											<c:when test="${i <= numberOfStarsOn}">
												<img
													src="https://res.cloudinary.com/duqoqrmum/image/upload/v1713615709/rating_on_qdv8g7.png">
											</c:when>
											<c:otherwise>
												<img
													src="https://res.cloudinary.com/duqoqrmum/image/upload/v1713615709/rating_off_kjiehk.png">
											</c:otherwise>
										</c:choose>
									</c:forEach> - <b>${review.headline}</b></td>
							</tr>
							<tr>
								<td>by ${review.customer.fullname} on ${review.reviewTime}
								</td>
							</tr>
							<tr>
								<td><i>${review.comment}</i></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
						</c:forEach>

					</table>
				</td>
			</tr>
		</table>
	</div>

	<jsp:directive.include file="footer.jsp" />


	<script type="text/javascript">
	$(document).ready(function() {		
		$("#buttonWriteReview").click(function() {
			window.location = 'write_review?book_id='+${book.bookId};
		})
		$("#buttonAddToCart").click(function() {
			window.location = 'add_to_cart?book_id='+${book.bookId};
		})
	});
	
	</script>

</body>
</html>