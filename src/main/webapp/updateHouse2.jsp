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
<%
	List<RentHouse>rentHouse=(List<RentHouse>)session.getAttribute("rentHouses");
	
	for(int i=0;i<rentHouse.size();i++){
		
	
	%>
	
	<input type="text" value="<%=rentHouse.get(i).getRenthouseHousetype()%>">
	<input type="text" value="<%=rentHouse.get(i).getRenthousePrice()%>">
	<input type="text" value="<%=rentHouse.get(i).getRenthouseArea()%>">
	<input type="text" value="<%=rentHouse.get(i).getRenthouseRegion()%>">
	<input type="text" value="<%=rentHouse.get(i).getRenthouseAddress()%>">
	<%
	}
	%>
	
<!-- 	<input type="button" on> -->
	
</body>
</html>