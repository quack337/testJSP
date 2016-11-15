<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script>
$(function() {
    //$("button").mouseout(function() { alert("mouseout"); });
});

var count = 1;
function makeButton() {
    var id = "btn" + count++;
    var tag = '<button type="button" id="@">버튼</button>'.replace("@", id);
    $("body").append(tag);
    $("button#" + id).mouseout(function() { alert("mouseout"); });
}
</script>
</head>
<body>
    <button type="button" onclick="makeButton()">버튼</button>

    <h3>post form</h3>
    <form action="test1.jsp?id=3" method="post">
        <input type="text" name="pg" value="3" />
        <button type="submit" name="cmd" value="submit">확인</button>
    </form>

    <h3>get form</h3>
    <form action="test1.jsp?id=3" method="get">
        <input type="text" name="pg" value="3" />
        <button type="submit" name="cmd" value="submit">확인</button>
    </form>

<%
Enumeration<String> e = request.getParameterNames();
while (e.hasMoreElements()) {
    String name = e.nextElement();
    String value = request.getParameter(name);
    out.println(name + " = " + value + "<br />");
}
%>
</body>
</html>