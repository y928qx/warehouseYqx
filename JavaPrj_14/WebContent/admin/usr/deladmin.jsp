<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.sql.*"%>
<%@ include file="check.jsp"%>

<jsp:useBean id="user" class="com.sanqing.news.manage.Usr"/>
<%
	if(user.adminPurview(adminName)>0)
		servlet.responseUrl(response,"../../error/error.jsp");
%>
<body bgcolor="#799ae1">
<%
	//ɾ�������û�
	user.delAdmin(servlet.requestStr(request,"userName"));
	servlet.responseUrl(response,"manager.jsp");
%>
</body>