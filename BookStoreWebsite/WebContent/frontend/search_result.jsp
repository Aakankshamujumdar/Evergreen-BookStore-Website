<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Results for ${keyword} - Online Books Store</title>

<style>
</style>
</head>
<body>
	<jsp:directive.include file="header.jsp" />

	<div align="center">
		<c:if test="${fn:length(result) == 0}">
			<h2>No Results for "${keyword}"</h2>
		</c:if>
		<c:if test="${fn:length(result) > 0}">
			<div align="left" style="width: 80%; margin: 0 auto">
				<center>
					<h2>Results for "${keyword}"</h2>
				</center>
				<c:forEach items="${result}" var="book">
					<div>
						<div style="display: inline-block; margin: 20px; width: 10%">
							<div align="left">
								<a href="view_book?id=${book.bookId}"> <img
									src="data:image/jpg;base64,${book.base64Image}" width="128"
									height="164" />
								</a>
							</div>
						</div>
						<div
							style="display: inline-block; margin: 20px; vertical-align: top; width: 60%"
							align="left">
							<div>
								<a href="view_book?id=${book.bookId}"> <b>${book.title}</b>
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
								<i>by ${book.author}</i>
							</div>
							<div>
								<p>${fn:substring(book.description,0,100)}</p>
							</div>
						</div>
						<div
							style="display: inline-block; margin: 20px; vertical-align: top;">
							<h3>₹ ${ book.price }</h3>
							<h3>
								<a>Add To Cart</a>
							</h3>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:if>
	</div>

	<jsp:directive.include file="footer.jsp" />

</body>
</html>