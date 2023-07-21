<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		
		// 1. 객체 생성
		var request = new XMLHttpRequest();
		
		// 2. open("전송방식", "경로", "비동기여부")
		request.open("POST", "data.html", false);
		
		// 4. 검사해서 성공하면 화면 출력 (자리가 3번 밑으로 가면 오류 발생)
		request.onreadystatechange = function () {
			// request.readyState : 데이터의 배달 경과 상태 표시
			// 0 = 객체 생성, 1 = open 안함, 2 = send 안함
			// 3 = 데이터 일부만 받음, 4 = 전체 다 받음
			
			// request.state : 서버로부터의 응답상태
			// 200 = 성공, 400번대 = 클라이언트 오류, 500번대 = 서버 오류
			
			if(request.readyState==4 && request.status == 200)
				document.body.innerHTML = request.responseText;
		}
		
		// 3. send() : 실행
		request.send();
		
		
	</script>
</body>
</html>