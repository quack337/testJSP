<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="http://localhost:8080/appServer1/imageUpload.do" enctype="multipart/form-data">
    <input type="text" name="userId" value="1" /> <br />
    <input type="file" name="file" /> <br />
    <input type="submit" value="submit" />
</form>


</body>
</html>