<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그 : include, forward</title>
<style type="text/css">
	body{
		background-color: skyblue;
	}
	
	h2{
		background-color: red; 
	}
</style>
</head>
<body>
<%-- 
	액션태그 : JSP 페이지 간에 흐름 제어, 자바빈즈 컴포넌트 지원,...
	사용법 : <JSP: 액션태그>
	예시)
		<jsp:include page="include할 파일"></jsp:include>
 		<jsp:forward page="forward할 위치"></jsp:forward>
 		
 	1. include : 현재 페이지에서 다른 페이지를 호출 또는 다른 페이지의 결과를
 				 현재 페이지에서 보여주는 것
 				 
 		1) include 지시어 : <%@ include file="가지고 올 페이지" %>
 			다른 페이지 소스 전체를 가져와서 현재 페이지에서 한번에 처리
 			파라미터 값을 전달할 수 없다.
 			잘 변경되지 않는 정적인 페이지에 많이 사용된다.
 			
 		2) include 액션태그 : <jsp:include page="가져올 페이지"></jsp:include>
 			제어권을 해당 페이지에 넘겨서 일 처리를 한 후 결과만 가져온다.
 			파라미터 값을 전달할 수있다. (param 액션 태그를 사용)
 			자주 변경되는 동적인 페이지에 많이 사용된다.
 			<jsp:include page="">
 				<jsp:param value="" name=""/>
 			</jsp:include>
 			
 --%>
	<h2>include 액션 사용하기</h2>
	<jsp:include page="ex04_request.jsp"/>
</body>
</html>