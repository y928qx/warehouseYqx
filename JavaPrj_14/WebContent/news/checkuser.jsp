<%@ page contentType="text/html; charset=GBK"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "com.sanqing.servlet.*"%>
<%@ page import = "com.sanqing.news.manage.*"%>

<jsp:useBean id="syslogin" scope="page" class="com.sanqing.persistence.NEWSUsr"/>
<jsp:setProperty name="syslogin" property="*"/>
<jsp:useBean id="userM" class="com.sanqing.news.UserManage"/>
<jsp:useBean id="sessionManager" class="com.sanqing.servlet.SessionManager"/>
<body bgcolor="#799ae1">
<%
	if(userM.isUsernameOk(syslogin.getUserName())){//�û����ж�
		if(userM.isPasswordOk(syslogin.getPassWd())){//�����ж�
			userM.upLoadTime(syslogin.getUserName());
			sessionManager.setSession(session,"sessionuser",syslogin.getUserName());
			DOServlet.responseUrl(response,"personal.jsp");
		}
		else{
			out.println("<Script language=JavaScript>alert('��������ȷ������!');JavaScript:history.back();</Script>");
		}
	}
	else{
		out.println("<Script language=JavaScript>alert('��������ȷ���û���!');JavaScript:history.back();</Script>");
	}
%>
