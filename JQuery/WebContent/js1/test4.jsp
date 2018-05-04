<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//대상.attr()
	// 이미지 태그 중 width 값 가져오기 값이 얼만지 알아본다.  + 경고메시지 출력하기
	
	var wid = $('img').attr('width');;
// 	alert(wid);
	// 이미지태그 속성 src  4.jpg 값 변경 
	$('#img1').attr('src','4.jpg');
// 	$('#img1').attr('width','300');
// 	$('#img1').attr('height','200');
	$('img').attr({
		width:300,
		height:200
	});
	// 이미지태그 속성 width 값을 100,200,300 배열로 변경해본다.
// 	var width=[100,200,300];
	$('img').attr('width',function(ind){
		return [ind+1]*100
	});
})


</script>
</head>
<body>
<!-- js1/test4.jsp -->
<img id="img1" src="1.jpg" width="200" height="100">
<img src="2.jpg" width="200" height="100">
<img src="3.jpg" width="200" height="100">
</body>
</html>