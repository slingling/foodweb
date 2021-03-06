<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单查询</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
  </head>
  
  <body>
    <main>
	    <s:form action="order/order_queryOrders" method="post">
	      
	      <div>
	         <s:submit value="查 询" cssClass="search-go"></s:submit>
	         <input class="search" type="text" name="food.foodname" placeholder="请输入关键词">
	      </div>
	
	      <h3>我的订单</h3>
	      <table>
	        <tr>  
	          <th>序号</th>  
	          <th>订单号</th>
	          <th>美食</th>
	          <th>单价</th> 
	          <th>份数</th>  
	          <th>总价</th>
	        </tr> 
	         <s:iterator value="orderList" status="status">
	          <tr>
	            <td><s:property value="#status.index+1"></s:property></td>
	            <td><s:a href="order/order_showDetail?order.orderid=%{orderid}">
	               <s:property value="orderid"></s:property></s:a>
	            </td>
	            <td><s:property value="food.foodname"></s:property></td>
	            <td><s:property value="food.unitprice"></s:property></td>
	            <td><s:property value="foodnum"></s:property></td>
	            <td><s:property value="total"></s:property></td>
	          </tr>
	         </s:iterator>
	      </table>
	    </s:form>
	</main>
  </body>
</html>
