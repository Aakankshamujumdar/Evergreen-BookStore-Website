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