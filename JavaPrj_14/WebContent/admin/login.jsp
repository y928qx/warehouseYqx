<%@ page contentType="text/html; charset=GBK" %>
<%@ page import = "java.io.*"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "com.sanqing.servlet.*"%>
<%@ page import = "com.sanqing.news.manage.*"%>

<jsp:useBean id="syslogin" scope="page" class="com.sanqing.persistence.NEWSAdmin"/>
<jsp:setProperty name="syslogin" property="*"/>
<jsp:useBean id="isIn" class="com.sanqing.news.manage.ISLogin"/>
<jsp:useBean id="SessionManager" class="com.sanqing.servlet.SessionManager"/>

<body bgcolor="#799ae1">
<%
	if(isIn.isUsernameOk(syslogin.getUserName())){//�û����ж�
		if(isIn.isPasswordOk(syslogin.getUserName(),syslogin.getPassWd())){//�����ж�
			SessionManager.setSession(session,"user",syslogin.getUserName());
			isIn.upTimeAndIp(request.getRemoteAddr());
			DOServlet.responseUrl(response,"default.jsp");
		}
		else{
			out.println("<Script language=JavaScript>alert('��������ȷ������!');JavaScript:history.back();</Script>");
		}
	}
	else{
		out.println("<Script language=JavaScript>alert('��������ȷ���û���!');JavaScript:history.back();</Script>");
	}
%>
</body>