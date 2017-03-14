<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加食物</title>
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
   <s:form action="food/food_addFood" method="post">
   <s:textfield name="food.foodname" label="名称"></s:textfield>
   <s:textfield name="food.unitprice" label="单价"></s:textfield>
   <s:textfield name="food.averageScore" label="分数"></s:textfield>
          <s:textfield name="food.imagepath" label="图片"></s:textfield>
   <s:textfield name="food.intro" label="简介"></s:textfield>
   <s:textfield name="food.kind" label="食堂"></s:textfield>
   <s:textfield name="food.hot" label="是否推荐"></s:textfield>
   <s:submit value="提交"></s:submit>
   
   </s:form>
  </body>
</html>
