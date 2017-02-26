<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<button id="btn1" onclick="findAllUser()">查看所有用户</button></br>
<input  id="text1" type="text" ></br>
<button id="btn2" onclick="findAllRentHouse()">查看所有出租信息</button></br>
<input  id="text2" type="text" ></br>
<button id="btn3" onclick="findAllFindHouse()">查看所有求组信息</button></br>
<div id="box"></div>

<script type="text/javascript">
	var un1 = document.getElementById("btn1");
	var un2 = document.getElementById("btn2");
	var un3 = document.getElementById("btn3");
	
	function findAllUser(){
	var xmlHttp = null;
	
	if(window.XMLHttpRequest){
		xmlHttp = new XMLHttpRequest();
	}else{
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlHttp.onreadystatechange = function(){
		if(xmlHttp.status == 200 && xmlHttp.readyState == 4){
			var box = document.getElementById("box");
			var user = eval("("+xmlHttp.responseText +")");

			for(var i=0;i<user.length;i++)
			{
				box.innerHTML += "用户ID="+user[i]["userId"] +",用户名字="+user[i]["userName"]+",用户密码="+user[i]["userPassword"]+",用户性别="+user[i]["userSex"]+
				                 "用户年龄="+user[i]["userAge"] +",用户联系方式="+user[i]["userTel"]+",用户会员="+user[i]["userVip"]+",用户地址="+user[i]["userAddress"]+
				                 "用户头像="+user[i]["userHead"] +",用户注册时间="+user[i]["userRegisttime"]+",用户状态="+user[i]["userStatus"]+",信息ID="+user[i]["newsId"]+
				                 ",用户余额="+user[i]["userBalance"]+"<br/>";
			}

		}
	}

	xmlHttp.open("get", "findAllUser", true);
	xmlHttp.send();
}
	
	
	
	function findAllRentHouse(){
		var xmlHttp = null;
		
		if(window.XMLHttpRequest){
			xmlHttp = new XMLHttpRequest();
		}else{
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		var rent= document.getElementById("text1");
		xmlHttp.onreadystatechange = function(){
			if(xmlHttp.status == 200 && xmlHttp.readyState == 4){
				var box = document.getElementById("box");
				var user = eval("("+xmlHttp.responseText +")");
				for(var i=0;i<user.length;i++)
				{
					box.innerHTML += "出租ID="+user[i]["renthouseId"] +",户型="+user[i]["renthouseHouseType"]+",价格="+user[i]["renthousePrice"]+",面积="+user[i]["renthouseArea"]+
					                 "区域="+user[i]["renthouseRegion"] +",地址="+user[i]["renthouseAddress"]+",初始发布时间="+user[i]["renthouseCreateDate"]+",更新发布时间="+user[i]["renthouseSendDate"]+
					                 "状态="+user[i]["renthousStatus"] +",用户ID="+user[i]["userId"]+",经纪人ID="+user[i]["brokerId"]+",图片ID="+user[i]["pictureId"]+"<br/>";
				}

			}
		}

		xmlHttp.open("get", "findAllRentHouse?renthouseId="+rent.value, true);
		xmlHttp.send();
	}
	
	
	
	function findAllFindHouse(){
		var xmlHttp = null;
		
		if(window.XMLHttpRequest){
			xmlHttp = new XMLHttpRequest();
		}else{
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		var find= document.getElementById("text2");
		xmlHttp.onreadystatechange = function(){
			if(xmlHttp.status == 200 && xmlHttp.readyState == 4){
				var box = document.getElementById("box");
				var user = eval("("+xmlHttp.responseText +")");

				for(var i=0;i<user.length;i++)
				{
					box.innerHTML += "求租信息ID="+user[i]["findhouseId"] +",求租价格="+user[i]["findhousePrice"]+",求租区域="+user[i]["findhouseRegion"]+",求租户型="+user[i]["findhouseHouseType"]+
					                 "求租面积="+user[i]["findhouseArea"] +",求租备注="+user[i]["findhouseMars"]+",求租创建日期="+user[i]["findhouseCreateDate"]+",求租发送日期="+user[i]["findhouseSendDate"]+
					                 "求租状态="+user[i]["findhouseSttaus"] +",用户ID="+user[i]["userId"]+"<br/>";
				}

			}
		}

		xmlHttp.open("get", "findAllFindHouse?findhouseId="+find.value, true);
		xmlHttp.send();
	}

</script>	
</body>
</html>