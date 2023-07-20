<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애니메이션 효과:animate</title>
<style type="text/css">
   div{
      background-color: skyblue;
      width: 100px;
      height: 100px;
      position: absolute;
   }
</style>
<%-- 두번빼 방법    jQuery 라이브러리 CDN  --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>   
<script type="text/javascript">
$(document).ready(function(){
   var i=0;
      $("#btn").on("click", function() {
         // 이동
         /*
         $("#div").animate({
            left:"250px",
            top:"250px"
         }, 3000); 
         */
         
         // 확대
         /* 
         $("#div").animate({
            width:"+=250px",
            height:"+=250px"
         }, 3000);
         */
         
         // 이동하면서 확대
         /* 
         $("#div").animate({
            left:"250px",
            top:"250px",
            width:"+=250px",
            height:"+=250px"
         }, 3000); 
         */
         
         //늘어나면서 사라졌다 생기기
         /* 
         $("#div").animate({
            width:"+=250px",
            height:"toggle"
         }, 3000);
         */
      
         if(i++%2 == 0){
            $("#div").animate({
               width:"+=250px",
               height:"+=250px"
            }, 3000);
         }else{
            $("#div").animate({
               width:"-=250px",
               height:"-=250px"
            }, 3000);
         }
      });
      
      $("#btn").on("click", function() {
   	   //애니메이트 효과를 정지 시키는 역할을 한다.
         $(this).stop();  // 눌린 객체가 this
      });
   });
</script>
</head>
<body>
   <button id="btn">애니메이션 시작</button>
   <hr>
   <div id="div"></div>
</body>
</html>