<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Payment Recipt- Online Book Store</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript"
	src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>

<style>
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
		<h2>You have made payment successfully. Thank you for purchasing!</h2>
			<jsp:directive.include file="receipt.jsp" />
		<div>
			<br/>
			<input type="button" value="Print Recipt" onclick="javascript:showPrintreceiptPopup();" />
		</div>
	</div>
	<jsp:directive.include file="footer.jsp" />
	<script type="text/javascript">
		function showPrintreceiptPopup() {
			var width = 600;
			var height = 250;
			var left = (screen.width - width) / 2;
			var top = (screen.width - width) / 2;
			
			window.open('frontend/print_recipt.jsp','_blank', 'width='+width +', height='+height+', top='+top+', left='+ left)
			
		}
	</script>
</body>
</html>