<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
		Edit Review
</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>
<style type="text/css">
	
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
</style>
</head>
<body>
	<jsp:directive.include file="header.jsp" />
	
	<div align="center">
		<h2>
				Edit Review
		</h2>
	</div>
	
	<div align="center">
			<form action="update_review" method="post" id="reviewForm">
			<input type="hidden" name="reviewId" value="${review.reviewId}"> 

			<table>
				<tr>
					<td align="right">Book:</td>
					<td align="left"><b>${review.book.title}</b></td>
				</tr>
				<tr>
					<td align="right">Rating:</td>
					<td align="left"><b>${review.rating}</b></td>
				</tr>
				<tr>
					<td align="right">Customer:</td>
					<td align="left"><b>${review.customer.fullname}</b></td>
				</tr>
				<tr>
					<td align="right">Headline:</td>
					<td align="left">
						<input type="text" size="60" name="headline" value="${review.headline}" />
					</td>
				</tr>
				<tr>
					<td align="right">Comment:</td>
					<td align="left">
						<textarea rows="5" cols="70" name="comment">${review.comment}</textarea>
					</td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td colspan="2" align="center">	
						<button type="submit">Save</button>&nbsp;&nbsp;&nbsp;
						<input type="button" id="buttonCancel" value="Cancel"/>
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	
	<jsp:directive.include file="footer.jsp" />
</body>
<script type="text/javascript" >
$(document).ready(function() {
	$("#reviewForm").validate({
		rules:{
			headline : "required",
			comment : "required"
		},
		messages : {
			headline : "please enter headline",
			comment : "please enter comment",
		}
	})
	
	$("#buttonCancel").click(function(){
			history.go(-1);
		})
});
</script>
</html>