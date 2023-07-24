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
			$("#out").empty();
			
			var table = "<table>";
			table += "<thead><tr><th>이름</th><th>수</th><th>회사명</th></tr></thead>";
			table += "<tbody>";

			$.get("data03.xml", function(data) {
					$(data).find("product").each(function() {
						// 태그의 속성 추출 : attr("속성 이름");
						var name = $(this).attr("name");
						var count = $(this).attr("count");
						// 태그의 텍스트 추출 : text();
						var company = $(this).text();
						table += "<tr>";
						table += "<td>" + name + "</td>";
						table += "<td>" + count + "</td>";
						table += "<td>" + company + "</td>";
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