<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>정보 입력 테스트</title>

<script type="text/javascript">
	
	function checkForm(){
		if(document.form1.id.value == ""){
			alert("ID가 없습니다");
			return;
		}
		document.form1.submit();
	}

</script>

</head>
<body>

<h2>블랙리스트 입력</h2>

<form name="form1" method="post" action="registmember" onsubmit="" >
아이디 : <input type="text" name="id" value="" /><br/>
패스워드 : <input type="text" name="password" value="" /><br />
<input type="button" value="확인" onclick="checkForm()">
</form>

</body>
</html>