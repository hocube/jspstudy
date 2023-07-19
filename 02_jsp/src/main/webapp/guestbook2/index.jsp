<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function list_go() {
		location.href = "${pageContext.request.contextPath}/GuestBook2?cmd=list"
	} 
</script>
</head>
<body>
  
	<%--<jsp:forward page="${pageContext.request.contextPath}/GuestBook2">
		<jsp:param value="list" name="cmd"/>
	</jsp:forward>--%>
	 
	 <button onclick="list_go()">리스트</button>
</body>
</html>