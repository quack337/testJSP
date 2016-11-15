<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script src="https://igorescobar.github.io/jQuery-Mask-Plugin/js/jquery.mask.min.js"></script>
<script>
$(function() {
	$("input[data-mask]").each(function() {
		var m = $(this).attr("data-mask")
		$(this).mask(m); 
	});
	
    $("form").submit(function() {
        $("input[data-mask]").each(function() {
            $(this).unmask(m); 
        });
    });
})
</script>
</head>
<%
String money = request.getParameter("money1");
%>
<body>

<h3><%= money %></h3>
<form>

<input type="text" name="money1" data-mask="000,000" /> <br />
<input type="text" name="money2" data-mask="000,000" /> <br />
<input type="text" name="date1" data-mask="0000-00-00" /> <br />
<input type="text" name="date2" data-mask="0000-00-00" /> <br />
<input type="submit" />

</form>

</html>
