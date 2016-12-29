<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 --%>
<%@page contentType="text/html; charset=GBK" language="java"
	errorPage=""%>
<%@page import="javax.naming.*,java.sql.*,javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xmls">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试tomcat数据源</title>
</head>
<body>
	<%
Context ctx=new InitialContext();

DataSource ds=(DataSource)ctx.lookup("java:comp/env/JDBC/jndi");

Connection coon=ds.getConnection();

Statement stmt=coon.createStatement();

ResultSet rs=stmt.executeQuery("select * from news_inf");

while(rs.next()){
	              out.println(rs.getString(1)+"\t"+rs.getString(2)+"<br/>");
	
}
%>
</body>
</html>