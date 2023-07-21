<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		width: 600px;
		margin-top: 50px;
		border-collapse: collapse; 
	}
	table, th, td{
		border: 1px solid red;
		text-align: center;
	}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn1").on("click", function() {
			$("#out").empty(); // 초기화
			$.ajax({
				url: "web_map.xml",
				method : "get",
				dataType : "xml",
				success : function(data) {
					var table = "<table>";
					table += "<thead>;
					table += "<tr>";
					table += "<th>도시</th><th>온도</th><th>상태</th></tr></thead>";
					table += "<tbody>";
					$(data).find("local").each(function() {
						var ta = $(this).attr("ta");
						var desc = $(this).attr("desc");
						var city = $(this).text();
						table += "<tr>";
						table += "<td>" + city + "</td><td>" + ta + "</td><td>" + desc + "</td>";
						table += "<tr>";
					});
					table += "</tbody></table>";
					$("#out").append(table);
				},
				error : function() {
					alert("가져오기 실패");
				}
			});
		});
	});
</script>
</head>
<body>
	<div id="btn1">날씨 가져오기(xml)</div>
	<div id="btn2">접종 가져오기(json)</div>
</body>
</html>