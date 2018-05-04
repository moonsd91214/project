<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.high_0{background: yellow;}
	.high_1{background: orange;}
	.high_2{background: blue;}
	.high_3{background: green;}
	.high_4{background: red;}
	
	
</style>
<script src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
//배열접근 함수    대상.each()     $.each(대상변수,)


	$('h1').each(function(index){
// 		alert(index);
		
		// .addClass(스타일 클래스 이름)
		$(this).addClass('high_'+index);
	});
	//배열변수
	var arr=[
	         {name:'홍길동',age:27},
	         {name:'이순신',age:26},
	         {name:'유관순',age:24}
	         ];
	
	$.each(arr,function(index,it){
		// table 태그 뒷부분에 추가 하겠다.
		// item.name , item.age
		$('table').append('<tr><td>'+it.name+'</td><td>'+it.age+'</td></tr>');
		
	});
});
</script>	
</head>
<body>
<!-- js1/test7.jsp -->
<table border="">
<tr><td>이름</td><td>나이</td></tr>
</table>
<h1>item-0</h1>
<h1>item-1</h1>
<h1>item-2</h1>
<h1>item-3</h1>
<h1>item-4</h1>
</body>
</html>