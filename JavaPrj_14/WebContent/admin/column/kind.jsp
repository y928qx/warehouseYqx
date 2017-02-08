<%@ page contentType="text/html; charset=GBK"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sanqing.servlet.*" %>
<%@ page import="com.sanqing.news.manage.*"%>
<%@ page import="com.sanqing.persistence.*"%>

<jsp:useBean id="Column" scope="page" class="com.sanqing.news.manage.Column"/>
<jsp:useBean id="Kind" scope="page" class="com.sanqing.news.manage.Kind"/>
<jsp:useBean id="servlet" scope="page" class="com.sanqing.servlet.DOServlet"/>
<jsp:useBean id="NEWSKind" scope="page" class="com.sanqing.persistence.NEWSKind"/>
<jsp:setProperty name="NEWSKind" property="*"/>

<%
    /**
     * �������
     */
	//ȡ��action��ֵ
	String action=servlet.requestStr(request,"submit");
	//�жϲ���
	if(action.equals("true")){
		//ִ�в���
		Kind.insKind(NEWSKind.getContent(),NEWSKind.getClassId());
		servlet.responseUrl(response,"kind.jsp");
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�����</title>
<link rel="stylesheet" href="../../css/admin.css" type="text/css">
<script language="JavaScript" src="../../js/admin/column/kind.js"></script>
</head>

<body>
<form  method="post" action="kind.jsp?submit=true" name="kind" onSubmit = "return check();">
<table width="578" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
  <tr> 
    <td height="33" colspan="4" align="center" valign="middle"> 
       <font color="#FF0000">������</font> &nbsp; &nbsp;ѡ����Ŀ: 

		<select name="classId">
	<%
	//��Ŀ�б�
	if(Column.isNullColumn()){
		Iterator addcolumn = Column.getColumn();
		while(addcolumn.hasNext()){
			NEWSClass tableClass = (NEWSClass)addcolumn.next();
			int addClassId = tableClass.getClassId();
			String addContent = tableClass.getContent();
%>
          <option value="<%=String.valueOf(addClassId)%>" checked><%=String.valueOf(addContent)%></option>
  <%
  	}
  %>
        </select>
        &nbsp;&nbsp;������: 
        <input type="text" size="20" name="content">&nbsp;
        <input type="submit" value="���" >
      </td>
	<%
	  	}
	else{
		out.println("<Script language=JavaScript>alert('���������Ŀ');JavaScript:location.href='column.jsp';</Script>");
	}
	%>
  </tr>
</table>
</form>
<br>
<br>
<br>
<table width="578" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
<%	
	//�ж�ָ���Ƿ�Ϊ�գ����Ϊ��˵����û������!
	if(Column.isNullColumn()){
		Iterator column = Column.getColumn();
		while(column.hasNext()){
			NEWSClass tableClass = (NEWSClass)column.next();
			int classId = tableClass.getClassId();
			String content = tableClass.getContent();
%>
  <tr align="center"> 
    <td height="28" colspan="4"><font color="#FF0000">��Ŀ��&nbsp;��</font><font color="#ffffff"><%=String.valueOf(content)%></font></td>
  </tr>
  <tr align="center"> 
    <td height="29"><font color="#FFFFFF">��ID</font></td>
    <td height="29"><font color="#FFFFFF">����</font></td>
    <td height="29" colspan="2"><font color="#FFFFFF">�༭��ɾ��</font></td>
  </tr>
<%
	//�ж�����Ƿ�Ϊ��
		if(Kind.isNullKind(classId)){
			Iterator kind = Kind.getKind(classId);
			while(kind.hasNext()){
			NEWSKind tableKind = (NEWSKind)kind.next();
			int kindId_kind = tableKind.getKindId();
			String content_kind = tableKind.getContent();
			int classId_kind = tableKind.getClassId();
%>
  <tr align="center"> 
    <td width="41%" height="24">&nbsp;<%=String.valueOf(kindId_kind)%></td>
    <td width="40%" height="24">&nbsp;<%=String.valueOf(content_kind)%></td>
    <td width="10%" height="24"><a href="editkind.jsp?kindId=<%=String.valueOf(kindId_kind)%>"><img src="../../images/admin/edit.gif" alt="�༭��Ŀ" height="18" border="0"></a></td>
    <td width="9%" height="24"><a href="delkind.jsp?kindId=<%=String.valueOf(kindId_kind)%>"><img src="../../images/admin/del.gif" alt="ɾ����Ŀ" width="16" height="16" border="0"></a></td>
  </tr>
<%
			}
		}else{
%>
  <tr align="center"> 
    <td height="27" colspan="4" class="title">sorry!���ڻ�û�����������������</td>
  </tr>
<%
		}
%>
<%
		}
	}else{
%>
  <tr align="center"> 
    <td height="29" colspan="4" class="title">sorry!���ڻ�û����Ŀ�������������Ŀ</td>
  </tr>
<%
	}	
%>
</table>
</body>
</html>
