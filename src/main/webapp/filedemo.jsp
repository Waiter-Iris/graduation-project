<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	用户名称:${requestScope.usename }
	<br /> 图片名称:${requestScope.file1 }
	<br /> 文件名称:${requestScope.file2 }
	<br />
	<!-- 把上传的图片显示出来 
	
	-->
	
	<img alt="go"
		src="images/<%=(String) request.getAttribute("file1")%>" />
</body>
</html> 