<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script src="https://igorescobar.github.io/jQuery-Mask-Plugin/js/jquery.mask.min.js"></script>
<script>
$(function() {
	$("[name=money]").mask("000,000");

	$("form").submit(function() {
		$("[name=money]").unmask();
	});
})
</script>
</head>
<%
String money = request.getParameter("money");
%>
<body>

<h3><%= money %></h3>
<form>

<input type="text" name="money" />
<input type="submit" />

</form>

</html>
