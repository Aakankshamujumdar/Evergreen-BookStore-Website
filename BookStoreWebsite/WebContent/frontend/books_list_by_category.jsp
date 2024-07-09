<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Books in ${ category.name } - Online Books Store</title>
</head>
<body>
	<jsp:directive.include file="header.jsp" />

	<div align="center">
		<h2>${ category.name }</h2>
	</div>

	<div align="center" style="margin: 0 auto;">
		<c:forEach items="${ listBooks }" var="book">
			<div style="display: inline-block; margin: 10px">
				<div>
					<a href="view_book?id=${ book.bookId }"> <img
						src="data:image/jpg;base64, ${book.base64Image}" width="128"
						height="164" />
					</a>
				</div>
				<div>
					<a href="view_book?id=${ book.bookId }"> <b>${ book.title }</b>
					</a>
				</div>
				<div>
					<c:forTokens items="${book.ratingStars}" delims="," var="star">
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
					</c:forTokens>
				</div>
				<div>
					<i>by ${ book.author }</i>
				</div>
				<div>
					<b>₹ ${ book.price }</b>
				</div>
			</div>
		</c:forEach>
	</div>

	<jsp:directive.include file="footer.jsp" />

</body>
</html>
