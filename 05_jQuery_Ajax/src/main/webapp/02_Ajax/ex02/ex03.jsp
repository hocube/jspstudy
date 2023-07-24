<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>xml 데이터 처리</title>
</head>
<body>
	<script type="text/javascript">
		var request = new XMLHttpRequest();
		request.open("POST", "data03.xml", false);

		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				// xml 태그 읽기

				// 텍스트 가져오기
				var data = request.responseXML;

				// data에 있는 정보중 태그 요소만 가져오기
				var product = data.getElementsByTagName("product");

				for (var i = 0; i < product.length; i++) {
					// 속성 추출 : attributes[index].value
					var name = product[i].attributes[0].value
					var count = product[i].attributes[1].value
					// 텍스트 추출 : childNodes[0].nodeValue
					var company = product[i].childNodes[0].nodeValue;
					document.body.innerHTML 
					+= "<h3><li>" + name + ":" + count + "-" + company + "</li></h2>"
				}
			}
		}

		request.send();
	</script>
</body>
</html>