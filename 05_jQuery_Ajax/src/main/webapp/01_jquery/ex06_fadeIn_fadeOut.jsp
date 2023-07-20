<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숨기기/표시하기</title>
<style type="text/css"></style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	// $(선택자).fadeIn(), $(선택자).fadeIn(speed)
	// $(선택자).fadeOut(), $(선택자).fadeOut(speed)
	// $(선택자).fadeToggle(), $(선택자).fadeToggle(speed)
	// $(선택자).fadeTo(speed, 불투명도)
	
	$(document).ready(function(){
		$("#hide").on("click", function() {
			$("#img").fadeOut(1400);
		});
		$("#show").on("click", function() {
			$("#img").fadeIn(1500);
		});
		// toggle이 아님
		$("#toggle").on("click", function() {
			$("#img").fadeTo("slow", 0.5);
		});
	});
</script>
</head>
<body>
	<button id="hide">숨기기</button>
	<button id="show">표시하기</button>
	<button id="toggle">숨기기/표시하기</button>
	<hr>
	
	<p><img id="img" src="../images/pic_bulboff.gif"></p>
</body>
</html>