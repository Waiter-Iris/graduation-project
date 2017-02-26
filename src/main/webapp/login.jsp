<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="findByName" method="post">
		<span>用户名：</span><input type="text" name="userName" value="zhangsan"/></br>
		<span>密码：</span><input type="text" name="userPassword" value="123"/></br>
		<input type="submit" value="登陆">
		<input type="button" value="注册" id="regist" onclick="registInfo()"/>
	
	</form>

</body>
<script type="text/javascript">
	function registInfo(){
		var url = "regist.jsp";
		 window.location.href= url;
	}
</script>
</html>