<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 설명</title>
</head>
<body>
<!-- html 주석 : 소스 보기에서 보인다. -->
<%-- jsp 주석 : 소스 보기에서 보이지 않는다. --%>
<%-- 
	JSP : Java Server Page
		  HTML 안에서 자바코드를 사용할 수 있도록 만든 스크립트 언어(행 단위 번역 실행)
	JSP : 구성
	  1. 지시어(디렉티브) : <%@ 지시어 %>
	  	 --><%@include %>, <%@page %>, <%@taglib %>
	  2. 스크립트요소 : HTML안에서 실제 자바 코드를 사용할 수 있도록 만드는 요소
	  	1) 선언부(<%! 내용 %>)     : 변수 선언이나 메소드 선언할 때 사용
	  	2) 스크립트릿(<% 자바코드 %>) : 자바코드를 코딩할 때 사용 
	  	3) 표현식(<%= %>)         : 변수 값이나 메서드의 결과 등 저장되어 있는 결과값 출력
	  	
	  ** 주의 사항 : 선언부, 스크립트릿, 표현식을 겹쳐서(포함해서) 사용할 수 없다.
 --%>
 

</body>
</html>