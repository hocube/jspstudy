<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax로 실행해 보기</title>
<style type="text/css">
table {
	width: 600px;
	margin-top: 50px;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid green;
	text-align: center;
}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#btn").on("click", function() {
			// 클릭을 하면 계속 추가되는 현상을 방지하기 위해 '초기화' 한다.
			var table = "<table>";
			table += "<thead><tr><th>이름</th><th>범위</th></tr></thead>";
			table += "<tbody>";
			
			// jQuery에서 (Json) 가져오는 메서드 : .getJSON()
			$.getJSON("data04.json", function(data) {
				// 배열이므로 each 사용
				$.each(data, function(k,v) {
					table += "<tr>";
					table += "<td>" + v["name"] + "</td>"; 
					table += "<td>" + v["scope"] + "</td>"; 
					table += "</tr>";
				});
				table += "</tbody></table>";
				$("#out").append(table);
			});
		});
	});
</script>
</head>
<body>
	<div id="btn">가져오기</div>
	<div id="out"></div>
</body>
</html>