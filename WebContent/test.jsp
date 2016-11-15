<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script>
function preview(value, lectureId) {
    $("#preview").css("left", value + "px");
    $("#preview").css("top", value + "px");
    $("#preview").attr("data-id", lectureId);
    $("#preview").text("lectureId: " + lectureId);
}
function fix() {
    var tag = $("#preview").clone();
    $("body").append(tag);

    var inputTag = $("<input type='hidden' />");
    inputTag.attr("name", "lectureId");
    inputTag.attr("value", tag.attr("data-id"));
    $("#saveForm").append(inputTag);
}
function maximize() {
    window.moveTo(0, 0);
    window.resizeTo(screen.availWidth, screen.availHeight);
}
$(function() {
    $(window).resize(function() { maximize(); alert("resize"); })
})
</script>
<style>
    #preview {
        border: 1px solid black; background-color:#eee; width:200px; height: 100px;
        position: absolute; top: 0px;
    }
    #button {
        margin-top: 500px;
    }
</style>
</head>
<body>

<div id="preview"></div>

<div id="button">
    <button onclick="preview(100, 211)">프리뷰1</button>
    <button onclick="preview(200, 212)">프리뷰2</button>
    <button onclick="preview(300, 213)">프리뷰3</button>

    <button onclick="fix()">고정</button>
</div>

<form id="saveForm" method="post">

    <button type="submit">저장</button>
</form>

</body>
</html>