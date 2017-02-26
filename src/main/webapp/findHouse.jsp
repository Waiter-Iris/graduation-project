<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<input type="text" id="gegion" value="">
	<input type="button" value="根据区域查询" onclick="findByGegion()">
	
	<div id="box"></div>
	
	
		<input type="text" id="housetype" value="两室一厅">
	<input type="button" value="根据户型查询" onclick="findByType()">
	
	<div id="box1"></div>
	
		<input type="text" id="houseArea" value="80">
	<input type="button" value="根据面积查询" onclick="findByArea()">
	
	<div id="box2"></div>
	
	<input type="text" id="housePrice1" value="">-
	<input type="text" id="housePrice2" value="">
	<input type="button" value="根据价格查询" onclick="findByPrice()">
	
	<div id="box2"></div>
	

<script type="text/javascript">
	
	function findByGegion(){
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
		var gegion=document.getElementById("gegion");
		xmlHttp.open("GET", "findByGegion?findhouseRegion="+gegion.value, true);	
		xmlHttp.send();
	}

	
	function findByType(){
		var xmlHttp = "";
		
		if(window.XMLHttpRequest){
			xmlHttp = new XMLHttpRequest();
		}else{
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xmlHttp.onreadystatechange = function(){
			
			if(xmlHttp.status == 200 && xmlHttp.readyState==4){
			
				var txt = xmlHttp.responseText;
				var box1 = document.getElementById("box1");
				box1.innerHTML = txt;
			
			}
			
		}
		
		var housetype=document.getElementById("housetype");
		
		xmlHttp.open("GET", "findByType?findhouseHousetype="+housetype.value, true);	
		xmlHttp.send();
	}

	
	function findByArea(){
		var xmlHttp = "";
		
		if(window.XMLHttpRequest){
			xmlHttp = new XMLHttpRequest();
		}else{
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xmlHttp.onreadystatechange = function(){
			
			if(xmlHttp.status == 200 && xmlHttp.readyState==4){
			
				var txt = xmlHttp.responseText;
				var box2 = document.getElementById("box2");
				box2.innerHTML = txt;
			
			}
			
		}
		
		var houseArea=document.getElementById("houseArea");
		
		xmlHttp.open("GET", "findByArea?findhouseArea="+houseArea.value, true);	
		xmlHttp.send();
	}
	
	
	
	function findByPrice(){
		var xmlHttp = "";
		
		if(window.XMLHttpRequest){
			xmlHttp = new XMLHttpRequest();
		}else{
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		xmlHttp.onreadystatechange = function(){
			
			if(xmlHttp.status == 200 && xmlHttp.readyState==4){
			
				var txt = xmlHttp.responseText;
				var box2 = document.getElementById("box2");
				box2.innerHTML = txt;
			
			}
			
		}
		
		var housePrice1=document.getElementById("housePrice1");
		var housePrice2=document.getElementById("housePrice2");
		
		xmlHttp.open("GET", "findByPrice?findhouseArea="+houseArea.value, true);	
		xmlHttp.open("GET", "getPK?name="+name.value+"&age="+age.value+"&remark="+remark.value, true);	
		xmlHttp.send();
	}
	

	
</script>

</body>
</html>