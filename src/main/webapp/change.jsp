<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="updateByUserId" method="post" onsubmit="return confirm('确认修改信息吗?');"></br>
		<span>ID：</span><input type="hidden" name="userId" value="${requestScope.userId}"></br>
		<span>用户名：</span><input type="text" name="userName" value="${requestScope.userName}"> </br>
		<span>密码：</span><input type="password" name="userPassword" value="${requestScope.userPassword}"></br> 
		<span>年龄：</span><input type="radio" name="userAge" value="${requestScope.userAge}"><span>男</span>
						<input type="radio" name="userAge" value=""><span>女</span></br>
		<span>性别：</span><input type="text" name="userSex" value="${requestScope.userSex}"></br>
		<span>联系方式：</span><input type="text" name="userTel" value="${requestScope.userTel}"></br> 
		<span>地址：</span><input type="text" name="userAddress" value="${requestScope.userAddress}"></br>
		<span>头像：</span><select name="userHead">
								<option></option>
								<option></option>
								<option></option>
								<option></option>
							</select></br>
		<input type="submit" value="更新">
		<input type="reset" value="重置">
	</form>

</body>
</html>