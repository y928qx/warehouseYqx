<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.sanqing.persistence.*"%>
<%@ include file="check.jsp"%>

<jsp:useBean id="usr" scope="page" class="com.sanqing.news.manage.Usr"/>
<jsp:useBean id="newsA" scope="page" class="com.sanqing.persistence.NEWSAdmin">
<jsp:setProperty name="newsA" property="*"/>
</jsp:useBean>

<%
	//���¹���Ա��Ϣ
	String action=servlet.requestStr(request,"submit");
	if(action.equals("true")){
		Iterator rs=usr.listAdmin(newsA.getUserName());		
		while(rs.hasNext()){
		NEWSAdmin tableAdmin = (NEWSAdmin)rs.next();
			//�жϲ���
			if((tableAdmin.getPassWd()).equals(servlet.requestStr(request,"ypasswd"))){//ԭʼ�����ж�
				usr.upAdmin(newsA.getPassWd(),newsA.getUserName());
				servlet.responseUrl(response,"../news/news.jsp");
			}
			else{
				out.println("<Script language=JavaScript>alert('�������ԭʼ����������!');JavaScript:history.back();</Script>");
			}
		}
	}
%>
<html>
<head>
<title>������</title>
<link rel="stylesheet" href="../../css/admin.css" type="text/css">
<script language="javascript">
	function check(){
		if(edit.ypasswd.value==""){
			alert("ԭʼ���벻Ϊ�գ�");
		}
		if(edit.passWd.value==""){
			alert("���벻λ�գ�");
			return false;
		}
		if(edit.passWd.value.length>20){
			alert("���벻����20λ");
			return false;
		}
		if(edit.passWd.value.length<6){
			alert("���벻����6λ");
			return false;
		}
		if(edit.pwdAgain.value==""){
			alert(" �ظ������벻Ϊ�գ�");
			return false;
		}
		if(edit.pwdAgain.value.length>20){
			alert("���벻����20λ");
			return false;
		}
		if(edit.pwdAgain.value.length<6){
			alert("���벻����6λ");
			return false;
		}
		return true;
	}
</script>

</head>
<body>
<br>
<table width="80%" height="2%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="26" align="center"><strong><font color="#ffffff">�޸Ĺ���Ա��Ϣ</font></strong></td>
  </tr>
</table>
<br>
<form  method="post" action="editadmin.jsp?submit=true" name="edit" onsubmit="return check();">
<table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
  <tr align="center"> 
      <td width="48%" height="28">�� �� ����</td>
    <td width="52%"><font color="red"><%=adminName%></font></td>
  </tr>
  <tr align="center"> 
    <td height="29"> 
      <p>ԭʼ���룺</p></td>
    <td><input name="ypasswd" type="password" id="ypasswd" size="16"></td>
  </tr>
  <tr align="center"> 
      <td height="28">�� �� �룺</td>
    <td><input name="passWd" type="password" id="passWd" size="16"></td>
  </tr>
  <tr align="center"> 
    <td height="26">�ظ�һ�飺</td>
    <td><input name="pwdAgain" type="password" id="pwdAgain" size="16"></td>
  </tr>
  <tr align="center"> 
    <td height="25">�û��ȼ���</td>
    <td><%=usr.strPurview(usr.adminPurview(adminName))%>
 	</td>
  </tr>
  <tr align="center"> 
    <td height="29" colspan="2">
	<input type="hidden" value="<%=adminName%>" name="userName">
	<input type="submit" value="��������"></td>
  </tr>
</table>
</form>
<p>&nbsp; </p>
</body>
</html>
