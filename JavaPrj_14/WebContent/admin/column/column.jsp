<%@ page contentType="text/html; charset=GBK"%>

<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.sanqing.persistence.*" %>
<%@ page import="com.sanqing.news.manage.*" %>
<%@ include file="check.jsp" %>

<jsp:useBean id="Column" scope="page" class="com.sanqing.news.manage.Column"/>
<jsp:setProperty name="Column" property="*"/>
<jsp:useBean id="NEWSClass" scope="page" class="com.sanqing.persistence.NEWSClass"/>
<jsp:setProperty name="NEWSClass" property="*"/>

<%
    /**
     * ��������
     */
	//ȡ��action��ֵ
	String action=servlet.requestStr(request,"submit");
	//�жϲ���
	if(action.equals("true")){
		//�ж��Ƿ��������ı��
		if(!Column.isIns(NEWSClass.getClassId())){
			Column.InsColumn(NEWSClass.getClassId(),NEWSClass.getContent());
			servlet.responseUrl(response,"column.jsp");
		}
		else{
			out.println("<Script language=JavaScript>alert('�˱���Ѿ����ڣ�����ѡһ��!');JavaScript:history.back();</Script>");
		}
	}
%>

<html>
<head>
<title>������</title>
<link rel="stylesheet" href="../../css/admin.css" type="text/css">
<script language="JavaScript" src="../../js/admin/column/column.js"></script>
</head>

<body>

	<br>
<table width="595" height="2%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="26" align="center">ϵ ͳ �� �� �� �� </td>
  </tr>
</table>

<table width="595" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
  <tr valign="middle" bgcolor="#799ae1"> 
    <td width="220" height="29" align="center"><font color="#FFFFFF">��ĿID</font></td>
    <td width="221" align="center"><font color="#FFFFFF">��Ŀ����</font></td>
    <td colspan="2" align="center"><font color="#FFFFFF">�༭��ɾ��</font></td>
  </tr>
<%
		//�ж��Ƿ�����Ŀ����
		if(Column.isNullColumn()){
			//ʵ��Iterator�ӿڣ�����������Vector�е�����
			Iterator rs = Column.getColumn();
			while(rs.hasNext()){//�ж�����ֵ�Ƿ����
				NEWSClass tableClass = (NEWSClass)rs.next();//ѭ��ȡֵ
				int classId = tableClass.getClassId();//ȡ��classid��ֵ
				String content = tableClass.getContent();//���ݵ�ֵ
%>
  <tr> 
    <td height="30" align="center">&nbsp;<%=String.valueOf(classId)%></td>
    <td align="center">&nbsp;<a><%=String.valueOf(content)%></a></td>
	<td width="60" align="center"><a href="editcolumn.jsp?classId=<%=String.valueOf(classId)%>"><img src="../../images/admin/edit.gif" alt="�༭��Ŀ" height="18" border="0"></a></td>
    <td width="60" align="center"><a href="delcolumn.jsp?classId=<%=String.valueOf(classId)%>" onclick="return(charge('<%=String.valueOf(content)%>'))"><img src="../../images/admin/del.gif" alt="ɾ����Ŀ" width="16" height="16" border="0"></a></td>
  </tr>
  	
<%
			}
	}else{
%>
  <tr align="center"> 
    <td height="35" colspan="4" align="center" class="title">Sorry! ��û���κμ�¼�� �������!</td>
  </tr>
  <%
	}	
%>
</table>

<p>&nbsp;</p>
<form action="column.jsp?submit=true" method=post name="column" onSubmit = "return check();">
<table width="595" height="7%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#ffffff">
  <tr>
      <td width="899" height="32" align="center"> �����Ŀ ID��
        <input name="classId" type="text" id="classId" size="4">
        &nbsp;&nbsp;��Ŀ���ƣ�
        <input name="content" type="text" size="20">
      &nbsp;&nbsp;<input type="submit" name="Submit" value="�ύ"></td>
  </tr>
</table>
 </form>
<p>&nbsp; </p>
</body>
</html>