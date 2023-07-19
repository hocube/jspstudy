<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOM (HTML 탐색:parent())</title>
<style type="text/css">
	.ancestors *{
		display : block;
		border: 2px solid black;
		color: red;
		padding: 5px;
		margin: 15px;
	}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	// 문서 객체 모델(DOM, Document Object Model)은 XML이나 HTML 문서에 접근하기 위한 일종의 인터페이스이다.
	// 부모, 자식, 자손, 형제
	// parent() 메서드는 선택한 요소의 직접적인 상위 요소를 반환한다. 
	// parents() 메서드는 루트 요소까지 선택한 요소의 모든 상위 요소
	// parentsUntil()은 선택한 요소와 선택한 상위 요소 사이
	$(document).ready(function(){
		// span에만 적용
		$("span").css("color", "blue");
		
		// parents(): span을 감싸고 있는 부모에 적용된다(한단계 위)
		//$("span").parent().css({"color":"skyblue","border":"2px solid skyblue"});
		
		// parents(): span을 감싸고 있는 부모에 적용된다(전체)
		//$("span").parents().css({"color":"orange","border":"2px solid orange"});
		
		// parentsUntil()
		$("span").parentsUntil("div").css({"color":"orange","border":"2px solid orange"});
		
	});
</script>
</head>
<body>
	<div class="ancestors">
  		<div style="width:500px;">div (great-grandparent)
   			 <ul>ul (grandparent)
     			 <li>li (direct parent)
       				 <span>span</span>
     			 </li>
    		</ul>
  		</div>

  		<div style="width:500px;">div (grandparent)
    		<p>p (direct parent)
     		 	<span>span</span>
    		</ps> 
  		</div>
	</div>
</body>
</html>