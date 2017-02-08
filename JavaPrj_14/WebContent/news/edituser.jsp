<%@ page contentType="text/html;charset=GBK"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sanqing.persistence.*" %>
<%@ include file="check.jsp" %>

<jsp:useBean id="userM" class="com.sanqing.news.UserManage"/>
<jsp:useBean id="linkNews" class="com.sanqing.news.LinkNews"/>
<jsp:useBean id="newsU" class="com.sanqing.persistence.NEWSUsr">
<jsp:setProperty name="newsU" property="*"/>
</jsp:useBean>

<%
	//�����û�����
	//ȡ��action��ֵ
	String action=servlet.requestStr(request,"submit");
	/**
	out.print(newsU.getPassWd());
	out.print(newsU.getPwdAgain());
	out.print(newsU.getSex());
	out.print(newsU.getQuestion());
	out.print(newsU.getAnswer());
	*/
	//�жϲ���
	if(action.equals("true")){
		userM.upPersonal(newsU.getPassWd(),newsU.getSex(),newsU.getQuestion(),newsU.getAnswer(),newsU.getEmailAddr(),newsU.getQq(),newsU.getHttp(),user);
		servlet.responseUrl(response,"personal.jsp");
	}
%>
<%userM.setUser(user);%>
<%@ include file="../include/head.jsp"%>
<link rel="stylesheet" href="../css/text.css" type="text/css">
<script src="../js/news/edituser.js"></script>

<body topMargin=0>
<form action="edituser.jsp?submit=true" method="post" name="edituser" onSubmit = "return check();">
<table width="760" height="376" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="11" rowspan="2" valign="top" background="../images/middle_left.gif">&nbsp;</td>
    <td width="738" height="20"> <table align=center border=0 cellPadding=0 cellSpacing=0 width=738 height=20 background="../images/index.gif">
        <tr> 
          <td width=736 height=20 class=cdfont valign="bottom"> ������<a href="index.jsp"><font color="#333333">��ҳ</font></a>�������� 
            <%Iterator rs_class = linkNews.showClass();while(rs_class.hasNext()){NEWSClass tableClass=(NEWSClass)rs_class.next();%><a href="news.jsp?classId=<%=tableClass.getClassId()%>"><font color="#333333"><%=tableClass.getContent()%></font></a>������<%}%>����<a href="../note/index.jsp" target="_blank"><font color="#333333"> 
            ���Ա�</font></a></td>
        </tr>
      </table></td>
    <td width="11" rowspan="2" background="../images/middle_right.gif">&nbsp;</td>
  </tr>
  <tr> 
      <td height="23" valign="middle"> &nbsp;&nbsp;&nbsp;<a href="personal.jsp">�û�������</a>&gt;&gt; 
        <a href="edituser.jsp">�û������޸�</a></td>
  </tr>
  <tr>
      <td height="333" valign="top" background="../images/middle_left.gif">&nbsp;</td>
    <td valign="top"><table width="99%" border="1" align="center" cellpadding="0" cellspacing="0">
          <%
			Iterator rs = userM.listPersonal();
			while(rs.hasNext()){
				NEWSUsr tableUser = (NEWSUsr)rs.next();
		  %>
		  <tr> 
            <td height="28" colspan="2" align="center" background="../images/reg.gif">�û������޸�</td>
          </tr>
          <tr align="center"> 
            <td height="31" align="right">�û�����</td>
            <td height="31"> <font color="#ff0000"><%=user%> </font></td>
          </tr>
          <tr align="center"> 
            <td height="28" align="right">�� �룺</td>
            <td height="28"><input name="passWd" type="password" id="passWd" value="<%=tableUser.getPassWd()%>"> &nbsp;</td>
          </tr>
          <tr align="center"> 
            <td width="26%" height="31" align="right">������һ�����룺</td>
            <td width="74%" height="31"> <input name="pwdAgain" type="password" id="pwdAgain"> 
              &nbsp;</td>
          </tr>
          <tr align="center"> 
            <td height="35" align="right">�Ա�</td>
            <td height="35"> &nbsp; 
			<% 
				if(tableUser.getSex() == 1){
			%>
			<select name="sex" id="sex">
                <option value="1" selected>��</option>
                <option value="2">Ů</option>
              </select>
			  <%}else{%>
              <select name="sex" id="sex">
                <option value="1" selected>��</option>
                <option value="2">Ů</option>
              </select>
			  <%}%>
			  </td>
          </tr>
          <tr align="center"> 
            <td height="33" align="right">������ʾ���⣺</td>
            <td height="33"><input name="question" type="text" id="question" value="<%=tableUser.getQuestion()%>"> &nbsp;</td>
          </tr>
          <tr align="center"> 
            <td height="29" align="right">����𰸣�</td>
            <td height="29"> <input type="text" name="answer" value="<%=tableUser.getAnswer()%>"> &nbsp;</td>
          </tr>
          <tr align="center"> 
            <td height="30" align="right">E-mail��</td>
            <td height="30"> <input name="emailAddr" type="text" id="emailAddr" value="<%=tableUser.getEmailAddr()%>"> &nbsp;</td>
          </tr>
          <tr align="center"> 
            <td height="27" align="right">QQ��</td>
            <td height="27" align="center"><input type="text" name="qq" value="<%=tableUser.getQq()%>"> &nbsp;</td>
          </tr>
          <tr align="center"> 
            <td height="29" align="right">������ҳ��</td>
            <td height="29"><input type="text" name="http" value="<%=tableUser.getHttp()%>"> &nbsp;</td>
          </tr>
          <tr> 
            <td height="30" colspan="2"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr> 
                  <td width="34%">&nbsp;</td>
                  <td width="66%"> 
                    <input type="submit" value="����"> &nbsp;&nbsp; 
                    <input type="reset" value="���"></td>
                </tr>
              </table></td>
          </tr>
		  <%}%>
        </table><br>
      </td>
    <td background="../images/middle_right.gif">&nbsp;</td>
  </tr>
</table>
  </form>
</body>
<%@ include file="../include/copyleft.jsp"%>