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
			table += "<thead><tr><th>이름</th><th>가격</th></tr></thead>";
			table += "<tbody>";

			// jQuery에서 (xml, html, text) 가져오는 메서드 : .get() 
			// jQuery에서 (Json) 가져오는 메서드 : .getJSON()
			$.get("data01.xml", function(data) { //data01가서 정보를 가져온게 data
				// 확인하기 위해 콘솔에 찍어보자
				// console.log(data);JavaScript

				// 태그 찾는 방법 : js(자바스크립트) => getElementsByTagName("태그이름");
				//				jQuery 		 => find("태그이름");

				// 반복문 : js(자바스크립트) => for문, forin문
				// 		  jQuery 	   => each()문

				// 받아온 data에서 product 태그를 찾아라.
				// 여러 개이므로 반복문을 실행하자(.each())
				$(data).find("product").each(function() {
					//여기서 this는 '이번에 해당하는거' 라는 의미
					var name = $(this).find("name").text();
					var price = $(this).find("price").text();
					table += "<tr>";
					table += "<td>" + name + "</td>";
					table += "<td>" + price + "</td>";
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