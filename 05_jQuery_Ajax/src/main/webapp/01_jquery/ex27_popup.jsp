<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팝업창</title>
<style type="text/css">
	body{
		background-color: lightyellow
	}
	#movie{
		position: absolute;
	}
	#movie2{
		position: absolute;
		left: 300px;
	}
	#close{
		padding: 10px;
		text-align: right;
	}
	#close2{
		padding: 10px;
		text-align: right;
	}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	$("#close").on("click", function() {
			$("#movie").css("display", "none");
		});
	$("#close2").on("click", function() {
			$("#movie2").css("display", "none");
		});
	});
</script>
</head>
<body>
	<div id="movie">
		<img alt="" src="../images/bbbb.jpg">
		<div id="close" style="background-color: skyblue">닫기</div>
	</div>
	<div id="movie2">
		<img alt="" src="../images/dl.jpg">
		<div>
			<span id="close2" style="background-color: tomato">오늘 그만보기</span>
			<span id="close2" style="background-color: tomato">닫기</span>
		</div>
	</div>
	<div>
		<h2>ICT 사진관</h2>	
		<div>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관 오시는 길</p>
		</div>
	</div>
</body>
</html>