<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ page import="com.sanqing.persistence.*" %>
<%@ include file="check.jsp" %>

<jsp:useBean id="usr" scope="page" class="com.sanqing.news.manage.Usr"/>
<%
	if(usr.adminPurview(adminName)>1)
		servlet.responseUrl(response,"../../error/error.jsp");
%>

<html>
<head>
<title>��̨�û�����</title>
<link rel="stylesheet" href="../../css/admin.css" type="text/css">

</head>

<body>

	<br>
<table width="80%" height="2%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="26" align="center"><font color="#FFFFFF">��̨�û���Ϣ����</font></td>
  </tr>
</table>
<table width="90%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
  <tr valign="middle" bgcolor="#799ae1"> 
    <td width="35%" height="28" align="center"><font color="#FFFFFF">�û���</font></td>
    <td width="46%" align="center"><font color="#FFFFFF">�û��ȼ�</font></td>
    <td width="19%" align="center"><font color="#FFFFFF">ɾ��</font></td>
  </tr>
  <%
  		if(usr.isAdminUser()){
  			Iterator rs = usr.listAdminUser();
			while(rs.hasNext()){
				NEWSAdmin tableAdmin = (NEWSAdmin)rs.next();
  %>
  <tr> 
    <td height="30" align="center">&nbsp;<%=tableAdmin.getUserName()%></td>
    <td align="center">&nbsp; <%=usr.strPurview(tableAdmin.getPurview())%></td>
    <td align="center"><a href="delbackusr.jsp?userName=<%=tableAdmin.getUserName()%>" ><img src="../../images/admin/del.gif" alt="ɾ���û�" width="16" height="16" border="0"></a></td>
  </tr>
  <%
		}
	}else{
%>
  <tr align="center"> 
    <td height="35" colspan="3" align="center" class="title">Sorry? ��û���κμ�¼!</td>
  </tr>
  <%
	}	
%>
</table>
	
	
<p>&nbsp; </p>
</body>
</html>
