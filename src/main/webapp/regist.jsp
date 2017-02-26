<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="userAdd" method="post">
		<span>姓名：</span><input type="text" name="userName" value=""></br>
		<span>性别：</span><input type="radio" name="userSex" value="男"><span>男</span>
				          <input type="radio" name="userSex"value="女"><span>女</span></br>
		<span>年龄：</span><input type="text" name="userAge" value=""></br>
		<span>密码：</span><input type="password" name="userPassword" value="" onblur=""><span id="sp"></span></br>
		<span>确认密码：</span><input type="password" name="userPassword2" value="" onblur=""></br>
		<span>联系方式：</span><input type="text" name="userTel" value=""></br>
		<span>头像：</span><select name="userHead">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
						</select>  </br>        
		<span>地址：</span><input type="text" name="userAddress" value=""></br>
		<input type="submit" value="提交">  <input type="reset" value="重置">
	</form>

</body>
</html>