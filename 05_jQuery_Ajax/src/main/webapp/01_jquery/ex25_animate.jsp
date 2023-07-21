<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	img{position: absolute;}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var position = 0;
		var timer;
		$("#btn").on("click", function() {
			$("img").animate({
				left: "+=800",
				bottom: "-=800"
			}, 8000);
		});
		// 이미지 누르면 멈추도록
		$("img").on("click", function() {
			$("img").stop();
		});
	});
</script>
</head>
<body>
	<p><button id="btn">이동</button></p>
	<div>
		<img alt="" src="../images/happycat.gif">
	</div>
</body>
</html>