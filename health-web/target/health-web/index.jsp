<%@ page language="java" contentType="text/html;charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
	<head>  
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">  
	<title>固定表头</title>  
	</head> 
	<body>
		<form action="${pageContext.request.contextPath}/user/login" method="post">
			username:<input type="text" name="username" value="${user.username}"/></br>
			password:<input type="password" name="password" value="${user.password}"/></br>
			<input type="submit" value="login"/><font color="red">${errorMsg}</font>
		</form>
	</body>

</html> 