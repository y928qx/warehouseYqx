<%@page import="java.util.function.Function"%>
<%@page import="com.mysql.fabric.xmlrpc.base.Array"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.NEWARRAY"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>










<script type="text/javascript"
	src="http://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js"></script>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成绩表</title>
<style type="text/css">
p.pp {
	color: purple;
	font-family: 仿宋;
	text-align: center;
	font-weight: bold;
	font-size: xx-large;
}

#di {
	color: red;
}

td {
	text-align: center;
	height: 30px;
	width: 50px;
}
</style>
</head>
<body>
	<p class="pp">学生成绩表</p>
	<div class="di">
		<a type="button" href="textShuRu.jsp">add</a> &nbsp; &nbsp;&nbsp;
		&nbsp; <input type="button" value="update" name="234">&nbsp;
		&nbsp;&nbsp; &nbsp; <input type="button" value="delete" name="345">&nbsp;
		&nbsp;&nbsp; &nbsp; <input type="button" value="select" name="456">
	</div>
	<hr />
	<div>
		<table cellspacing="0" border="1" width="500">
			<tr>
				<td>姓名</td>
				<td>班级</td>
				<td>课程</td>
				<td>分数</td>
			</tr>
			<tr>
				<td><%=request.getSession().getAttribute("nua")%></td>
				<td><%=request.getSession().getAttribute("ucl")%></td>
				<td><%=request.getSession().getAttribute("uco")%></td>
				<td><%=request.getSession().getAttribute("ucor")%></td>
				
			</tr>
			
		<%-- 	<%!   String x[]=new Array[];   %> --%>

		
			
		</table>
	</div>
</body>
</html>