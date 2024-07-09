<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Write a Review - Online Book Store</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript"
	src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>

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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
</head>
<body>
	<jsp:directive.include file="header.jsp" />

	<div align="center">
		<form id="reviewForm" action="submit_review" method="post">
			<table width="60%">
				<tr>
					<td><h2>Your Reviews</h2></td>
					<td>&nbsp;</td>
					<td><h2>${loggedCustomer.fullname}</h2></td>
				</tr>
				<tr>
					<td colspan="3"><hr /></td>
				</tr>
				<tr>
					<td><b>${book.title}</b></br> <img
						src="data:image/jpg;base64, ${book.base64Image}" width="240"
						height="300" /></td>
					<td>
						<div id="rateYo"></div> <input type="hidden" id="rating"
						name="rating" /> <input type="hidden" name="bookId"
						value="${book.bookId}" /> <br /> <input type="text"
						name="headline" size="60"
						placeholder="Headline or summery for your review (required)" /> <br />
						<br /> <textarea rows="10" cols="70" name="comment"
							placeholder="Write your review details..."></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<button type="submit">Submit</button> &nbsp;&nbsp;
						<button id="buttonCancel">Cancel</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:directive.include file="footer.jsp" />

	<script type="text/javascript">
		$(document).ready(function() {
			$("#reviewForm").validate({
				rules : {
					headline : "required",
					comment : "required",
				},
				messages : {
					headline : "Please enter headline",
					comment : "please enter review details",
				}
			})

			$("#buttonCancel").click(function() {
				history.go(-1);
			})

			$("#rateYo").rateYo({
				starWidth : "40px",
				fullStar : true,
				onSet : function(rating, rateYoInstance) {
					$('#rating').val(rating)
				}
			});
		});
	</script>
</body>
</html>