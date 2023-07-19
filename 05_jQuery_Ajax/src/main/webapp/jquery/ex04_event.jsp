<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event</title>
<style type="text/css"></style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	// 마우스 이벤트 : click(.on(), .bind()) , dblclick(), hover(), mouseover(), mouseout(), toggle()
	// 키보드 이벤트 : keypress, keyup, keydown
	// form 이벤트 : submit, change, focus
	$(document).ready(function(){
		// 클릭 이벤트
		$("#p1").on("click", function() {
			alert("on 클릭 성공");
		});
		$("#p2").bind("click", function() {
			alert("bind 클릭 성공");
		});
		
		// 마우스 이벤트
		// $("#img").hover(function() {
		//	  속성 변경 => attr
		//	 $(this).attr("src", "../images/pic_bulbon.gif")
		// });
		
		// 마우스 올리고 내렸을 때
		 $("#img").mouseover(function() {
			 $(this).attr("src","../images/pic_bulbon.gif")
		 });
		 $("#img").mouseout(function() {
			 $(this).attr("src","../images/pic_bulboff.gif")
		 });
		
		// 안됨 찾아보기
		// $("#p3").toggle(function() {
		//	 $("#img").attr("src", "../images/pic_bulbon.gif")
		// }, function(){
		//	$("#img").attr("src", "../images/pic_bulbonff.gif")
	    // });
		
		// 키보드 이벤트
		// keyup : 글자를 입력하면
		// 보통 input에서 val() = value
		$("#name").keyup(function() {
			var name = $(this).val();
			if(name.length >= 4)
			alert(name);
		});
		
		// 체크박스 : change(), select(), radio
		$("#chk").change(function() {
			// var str = $("#addr").val();
			// $("#addr2").val(str);
			// 이렇게 하면 체크박스 한번 더 클릭했을 때 없어지지 않음.
			
			// 내용을 넣었다 뺐다하려면
			var str = $("#addr").val();
			if($(this).is(":checked")){ //.is(":checkd") => 체크가 된 상태니?
				$("#addr2").val(str); // 체크 된 상태면 내용 넣어주고
			}else{
				$("#addr2").val(""); // 체크 안 된 상태면 내용 없애라
			}
		});
		
		// 라디오
		// 라디오 버튼 클릭하면 해당하는 성별이 아래에 글자로 뜸
		$("input[name=gender]").change(function() {
			var res = $(this).val();
			$("#res").text(res);
		});
		
		// 비밀번호 확인
		$("#pwd2").keyup(function() {
			if($("#pwd").val() == $("#pwd2").val()) {
				$("#s1").html("<b>암호가 맞네요</b>");
			}else{
				$("#s1").html("<b>암호가 틀리네요</b>");
			}
		});
		
});
</script>
</head>
<body>
	<p><span id="p1">이벤트 처리</span></p>
	<p><span id="p2">이벤트 처리</span></p>
	<div id="p3">이벤트 처리</div>
	<p><img id="img" src="../images/pic_bulbon.gif"></p>
	<p><img id="img" src=""></p>
	<p><input type="text" name="name" id="name"></p>
	<hr>
	
	<p>주소 : <input type="text" name="addr" id="addr"></p>
	<p><input type="checkbox" id="chk">상동</p>
	<p>주소 : <input type="text" name="addr2" id="addr2"></p>
	<hr>
	<p> 성별 : <input type="radio" name="gender" value="남자">남자
			  <input type="radio" name="gender" value="여자">여자
			  <input type="radio" name="gender" value="외국인">외국인
	</p>
	<div id="res"></div>
	
	<p>비밀번호 : <input type="password" name="pwd" id="pwd"></p>
	<p>비밀번호 확인: <input type="password" name="pwd2" id="pwd2"></p>
	<p> <span id="s1"></span> </p>
	
</body>
</html>