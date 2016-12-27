<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="background-image:url('img/77.jpg');"  ><center>
<%
  response.setHeader("refresh", "5;url=login.jsp");
  session.invalidate(); 
%>
<div  style="color: white;font-family: 隶书;  "  >
<p>登录失败</p>
<p>5秒后返回首页，如果没有返回请点击<a href="login.jsp">这里</a></p>
</div></center>
</body>
</html>