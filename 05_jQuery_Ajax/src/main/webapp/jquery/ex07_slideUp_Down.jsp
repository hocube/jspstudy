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
	// $(선택자).slideDown(), $(선택자).slideDown(speed)
	// $(선택자).slideUp(), $(선택자).slideUp(speed)
	// $(선택자).slideToggle(), $(선택자).slideToggle(speed)
	
	$(document).ready(function(){
		$("#hide").on("click", function() {
			$("#img").slideUp(600);
		});
		$("#show").on("click", function() {
			$("#img").slideDown(600);
		});
		// toggle이 아님
		$("#toggle").on("click", function() {
			$("#img").slideToggle("slow");
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