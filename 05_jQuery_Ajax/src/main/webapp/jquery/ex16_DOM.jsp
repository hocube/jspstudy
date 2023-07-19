<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOM (HTML 탐색:children())</title>
<style type="text/css">
	.myclass * {
		display: block;
		border: 1px solid gray;
		padding: 5px;
		margin: 10px;
	}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// children() : 선택한 요소의 마지막 요소까지 반환
		// find(요소)     : 선택한 요소에서 요소까지 반환
		
		// children()
		// $("div").children().css({"color":"red", "border":"5px solid red"});
		
		// find()
		$("div").find("span").css({"color":"red", "border":"5px solid red"});
		
	});
</script>
</head>
<body>
	<div class="myclass" style="width: 500px;"> Mydiv
		<p>p(child)
			<span> span(grandchild) </span>
		</p>
		<p>p(child)
			<span> span(grandchild) </span>
		</p>
	</div>
</body>
</html>