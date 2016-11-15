<%@ page language="java" contentType="text/html; charset=UTF-8"     pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
<script>
$(function() {
	$("form").submit(function() {		
		return confirm("저장하시겠슴?");
	})
	
    $("a").click(function() {       
        return confirm("삭제하시겠슴?");
    })	
});
</script>
</head>
<%
String data = request.getParameter("data");
if (data == null) data = "";
%>
<body>

<%= new java.util.Date() %>

<form>
<input type="text" name="data" value="<%= data %>" />
<input type="submit" value="submit" />
</form>

<a href="testOnSubmit.jsp">삭제</a>
</body>
</html>