<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sanqing.news.manage.*"%>
<%@ page import="com.sanqing.persistence.*"%>
<%@ include file="check.jsp" %>

<jsp:useBean id="user" class="com.sanqing.news.manage.Usr"/>
<%	
	if(user.adminPurview(adminName)>1)
		servlet.responseUrl(response,"../../error/error.jsp");
%>
<jsp:useBean id="Pagination" class="com.sanqing.common.Pagination"/>

<%
	int curPages = Pagination.curPages(Pagination.strPage(request,"page"));//ҳ����
	Pagination.setRows(20);//ÿҳ��ʾ20��
	int totalPages = Pagination.getPages(user.sumUser());//ȡ����ҳ��
%>
<html>
<head>
<title>������</title>
<link rel="stylesheet" href="../../css/admin.css" type="text/css">
<script src=../../js/admin/usr/show.js></script>

</head>
<body>
<br>
<table width="80%" height="2%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="26" align="center"><font color="#FFFFFF"><strong>�û���Ϣ����</strong></font></td>
  </tr>
</table>
<%
		//�ж��Ƿ����û�
		if(user.isUser()){
%>
<table width="90%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
  <tr valign="middle" bgcolor="#799ae1"> 
    <td width="35%" height="28" align="center"><font color="#FFFFFF">�û���</font></td>
    <td width="35%" align="center"><font color="#FFFFFF">�û��ȼ�</font></td>
    <td colspan="2" align="center"><font color="#FFFFFF">�鿴�������ϡ�ɾ��</font></td>
  </tr>
  <%
		Iterator rs = Pagination.getPageSetUsr(user.userList(),curPages);
		int i=1;//�������ÿҳ��ʾ������		
		while(rs.hasNext()){//ѭ���������ʾ
			NEWSUsr userTable = (NEWSUsr)rs.next();
%>
  <tr> 
    <td height="30" align="center">&nbsp;<%=userTable.getUserName()%></td>
    <td align="center">&nbsp;<a><%=user.userGrade(userTable.getPurview())%></a></td>
    <td width="111" align="center"><a href="javascript:show('showman.jsp?userName=<%=userTable.getUserName()%>')"><img src="../../images/admin/man.gif" alt="�༭�û�" width="29" height="22" border="0"></a></td>
    <td width="76" align="center"><a href="deluser.jsp?userName=<%=userTable.getUserName()%>" ><img src="../../images/admin/del.gif" alt="ɾ���û�" width="16" height="16" border="0"></a></td>
  </tr>
  		<%
		i=i+1;
		if(i>20)
			break;
			}
		%>
</table>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="68%" height="23" align="left">&nbsp;</td>
    <td width="16%" align="center">
	   <%if(curPages>1){%>
      <a href="user.jsp?page=<%=curPages-1%>"><img src="../../images/prev.gif" width="36" height="11" border="0"></a> 
       <%}%>
	</td>
    <td width="16%" align="center">
     <%if(curPages<totalPages){%>
     <a href="user.jsp?page=<%=curPages+1%>"><img src="../../images/next.gif" width="36" height="11" border="0"></a> 
     <%}%>	
	</td>
  </tr>
</table>
<%
	}else{
%>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="25" align="center"><font color="#FF0000">Sorry! ��û���κ��û���</font></td>
  </tr>
</table>
<%
	}
%>
<p>&nbsp; </p>
</body>
</html>
