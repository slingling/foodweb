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
    
    <title>评价</title>
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
   <s:form action="order/order_editOrder">
   <h1>订单评价</h1>
   <s:hidden name="order.orderid"></s:hidden>
   <s:hidden name="order.foodnum"></s:hidden>
    <s:textfield name="order.comment" label="评价（请输入好评/中评/差评）"></s:textfield>
   <s:textfield name="order.content" label="评论"></s:textfield>
   <s:submit value="提交"></s:submit>
   
   </s:form>
  </body>
</html>
