<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示食物详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <table border="0" style="float:left;">
						<tr>
							<td rowspan="5" width="240" align="center"><img src="/foodweb/photos/food_image/${food.imagepath}" width="200" height="150"></td>
							<td height="40">名称：<c:out value="${food.foodname}"></c:out></td>
							
						</tr>
						
						<tr>
							<td height="25">价格：<c:out value="${food.unitprice}"></c:out>元</td>
							
						</tr>
						
						<tr>
							<td height="25">食堂：<c:out value="${food.kind}"></c:out>
							
							</td>
							
						</tr>
						
						<tr>
							<td>评分：${food.averageScore} </td>
							
						</tr>
							<tr>
							<td>简介：${food.intro} </td>
							
						</tr>
				</table>			
  </body>
</html>
