<%@page import="com.dream.rent.pojo.RentHouse"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="selectInfo" method="post">
	<input type="text" value="1" id="info" name="user_id">
	<input type="submit" value="查询" >
	<div id="box"></div>
	</form>
	<!-- <script type="text/javascript">
	function findInfo(){
		var xmlHttp = "";
		
		if(window.XMLHttpRequest){
			xmlHttp = new XMLHttpRequest();
		}else{
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xmlHttp.onreadystatechange = function(){
			
			if(xmlHttp.status == 200 && xmlHttp.readyState==4){
			
				var txt = xmlHttp.responseText;
				var box = document.getElementById("box");
				box.innerHTML = txt;
			}
		}
		var info=document.getElementById("info");
		xmlHttp.open("GET", "selectInfo?user_id="+info.value, true);	
		xmlHttp.send();
	}
	
	</script> -->
	
</body>
</html>