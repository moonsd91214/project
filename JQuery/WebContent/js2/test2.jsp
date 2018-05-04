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
// form태그  전송 했을때 
// 경고메시지 아이디 : 비밀번호 		.val()
$('form').submit(function(){
// 	alert("아이디 :"+$('#id').val() +","+"비밀번호 :"+$('#pass').val());
// 	return false;	
if($('#id').val()==""){

	alert("입력하시오");
	return false;
}else if($('#pass').val()==""){
	alert("입력하시오");
	return false;
}
return false;
});	

});
</script>
</head>
<body>
<!-- js2/test2.jsp -->
<form action="a.jsp" method="post">
아이디:<input type="text" name="id" id="id"><br>
비밀번호:<input type="password" name="pass" id="pass"><br>
<input type="submit" value="전송">
</form>
</body>
</html>