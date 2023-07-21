<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한줄 뉴스- 자바스크립트</title>
<style type="text/css"></style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var news=["이강인 무슨 일? 제 사생활 존중 부탁드립니다 축구팬들에게 당부",
			"오타니에 벌벌 떤 ML 명문구단, 고의4구 포함 4볼넷 위엄…LAA, 양키스 3연전 싹쓸이",
			"‘심정수 아들’ 케빈 심, 5R 지명 받은 애리조나와 37.5만달러 계약",
			"'잘 치고+잘 잡고+잘 달리고' 김하성 개인 최다 15경기 연속 출루…팀은 2연승 질주",
			"‘CHO 10’ 조규성, 유럽서도 10번 달고 뛴다...국대 9번→미트윌란 10번",
			"김민재 데뷔전부터 '우승 가능'…벌써부터 즐거운 '트로피 수집' 상상"];
	var index = 0;
	setInterval(() => {
		$("#mydiv").text(news[index++]);
		if(index == news.length) index=0;
	}, 2000);
 });
</script>
</head>
<body>
	<div id="mydiv"></div>
</body>
</html>