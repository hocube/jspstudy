<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exam01</title>
<style type="text/css">
	h2{text-align: center;}
	
	div{
		margin: auto;
		width: 500px;
		height: 2000px;
		border: 1px solid #bcbcbc;
	}
	a.top{
		position: fixed;
		left: 50%;
		bottom: 50px;
		display: none;
	}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
 	//scrollTop() : 스크롤바의 수직 위치를 가져오는 것
	$(document).ready(function(){
		$(window).scroll(function() {
			// 스크롤바의 수직 위치값이 200보다 크면 보이게 하고 아니면 안보이게 해라.
			if($(this).scrollTop() > 200){
				$(".top").fadeIn();
			}else{
				$(".top").fadeOut();
			}
		}); 
		// 부드럽게 올라가는 애니메이션 효과
		$(".top").on("click", function() {
			$("html, body").animate({scrollTop:0},1000);
			return false
		});
	});
</script>
</head>
<body>
	<div><h2>맨 위로 부드럽게 이동하는 링크 만들기</h2></div>
	<a href="#" class="top">TOP</a>
</body>
</html>