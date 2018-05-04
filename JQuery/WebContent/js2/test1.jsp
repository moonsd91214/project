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
	// 대상.이벤트함수()		.bind('click',기능) 	.click(기능)
	$('#btn').bind('click',function(){
// 		alert("클릭");	
		
	});
	$('#btn').click(function(){
// 		alert("클릭2");	
		
	});
	// h1 클릭 했을때 클릭한 h1 태그 내용을 가져와서 내용* => h1태그 넣기
	$('h1').click(function(){
		$(this).html(function(index,ht){
		alert("클릭");
		return ht+'*';
		});
	});
	//하이퍼링크를 클릭했을때 배경색 변경
	$('a').click(function(){
		$(this).css('color','pink');
		return false; //리턴펄스 하면  그이전 기능은 하지마라라는 뜻
	});
	// 이미지 마우스 오버 '2.jpg' 변경, 마우스 아웃 '1.jpg' 변경
	$('img').mouseover(function(){
		$(this).attr('src','../js1/2.jpg');
	}).mouseout(function(){
		$(this).attr('src','../js1/1.jpg');
	});
});


</script>
</head>
<body>
<!-- js2/test1.jsp -->
<img src="../js1/1.jpg">
<a href="http://www.naver.com">NAVER</a>
<h1>head0</h1>
<h1>head1</h1>
<h1>head2</h1>
<input type="button" value="버튼" id="btn">


</body>
</html>