<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sanqing.persistence.*" %>
<%@ include file="check.jsp" %>

<jsp:useBean id="usr" scope="page" class="com.sanqing.news.manage.Usr"/>
<%
	if(usr.adminPurview(adminName)>0)
		servlet.responseUrl(response,"../../error/error.jsp");
%>
<jsp:useBean id="newsA" scope="page" class="com.sanqing.persistence.NEWSAdmin"/>
<jsp:setProperty name="newsA" property="*"/>
<%
	/**
	 *�����û�
	 */
	//ȡ��action��ֵ
	String action=servlet.requestStr(request,"submit");
	//�жϲ���
	if(action.equals("true")){
		//�ж��Ƿ����������û�
		if(!usr.isAdminName(newsA.getUserName())){
			usr.insAdmin(newsA.getUserName(),newsA.getPurview());
			servlet.responseUrl(response,"manager.jsp");
		}
		else{
			out.println("<Script language=JavaScript>alert('���û��Ѿ����ڣ�����ѡһ��!');JavaScript:history.back();</Script>");
		}
	}
%>
<html>
<head>
<title>������</title>
<link rel="stylesheet" href="../../css/admin.css" type="text/css">
<script language="JavaScript">
	function check(){
		if(manager.userName.value == ""){
			alert("�û�����Ϊ�գ�");
			return false;
		}
		if(manager.userName.value.length>20){
			alert("�û���������20λ");
			return false;
		}
		return true;	
	}
</script>
</head>

<body>
<table width="80%" height="2%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="26" align="center"><font color="#FFFFFF"><strong>����Ա��Ϣ����</strong></font></td>
  </tr>
</table>
<table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
  <tr valign="middle" bgcolor="#799ae1"> 
    <td width="289" height="29" align="center"><font color="#FFFFFF">�û���</font></td>
    <td width="324" align="center"><font color="#FFFFFF">�û��ȼ�</font></td>
    <td width="127" align="center"><font color="#FFFFFF">ɾ��</font></td>
  </tr>
  <%
  		if(usr.isAdminUser()){
  			Iterator rs = usr.listAdminUser();
			while(rs.hasNext()){
				NEWSAdmin tableAdmin = (NEWSAdmin)rs.next();
  %>
  <tr> 
    <td height="30" align="center">&nbsp;<%=tableAdmin.getUserName()%></td>
    <td align="center">&nbsp;
      <a><%=usr.strPurview(tableAdmin.getPurview())%></a>
      </td>
    <td align="center"><a href="deladmin.jsp?userName=<%=tableAdmin.getUserName()%>" ><img src="../../images/admin/del.gif" alt="ɾ���û�" width="16" height="16" border="0"></a></td>
  </tr>
  <%
			}
		}else{
%>
  <tr align="center"> 
    <td height="35" colspan="3" align="center" class="title">Sorry! ��û���κμ�¼�� �������!</td>
  </tr>
  <%
	}	
%>
</table>
<br>
<br>
<table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
  <tr>
    <td height="36" bordercolor="#FFFFFF"> 
    <form action="manager.jsp?submit=true" method="post" name="manager" onSubmit="return check();">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
          <td width="15%" height="24" align="right"><strong><font color="#FFFFFF">��ӹ���Ա:</font></strong></td>
          <td width="76%" align="center">�������û���:&nbsp;&nbsp; 
            <input type="text" size="16" name="userName">
            &nbsp;&nbsp;�û��ȼ���
            <select name="purview" size="1" id="purview" value="" checked>
                <option value="1">����Ա</option>
                <option value="2">¼��Ա</option>
              </select></td>
          <td width="9%"><input type="submit" value="���">&nbsp;</td>
        </tr>
		
      </table>
      </form></td>
  </tr>
</table>
<p>&nbsp; </p>
</body>
</html>
