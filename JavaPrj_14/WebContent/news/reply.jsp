<%@ page contentType="text/html;charset=GBK"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ page import="com.sanqing.persistence.*" %>

<jsp:useBean id="linkNews" class="com.sanqing.news.LinkNews"/>
<jsp:useBean id="servlet" scope="page" class="com.sanqing.servlet.DOServlet"/>

<%@ include file="../include/head.jsp"%>
<link rel="stylesheet" href="../css/text.css" type="text/css">
<script language="JavaScript">
	function check(){
		if(reply.user.value==""){
			alert("��д����Ĵ���");
			return false;
		}
		if(reply.user.value.length>16){
			alert("�������ܴ���20λ!");
			return false;
		}
		if(reply.content.value==""){
			alert("��д�����ݣ�");
			return false;
		}
		if(reply.content.value.length>50){
			alert("���ݲ��ܳ���50λ��");
			return false;
		}
		return true;
	}
</script>
<body topMargin=0>
<table width="760" height="260" border="0" align="center" cellpadding="0" cellspacing="0">
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
    <td height="13" valign="middle">&nbsp; </td>
  </tr>
  <tr>
      
    <td height="227" valign="top" background="../images/middle_left.gif">&nbsp;</td>
    		<td valign="top"><table width="99%" border="1" align="center" cellpadding="0" cellspacing="0">
          <tr background="../images/reg.gif"> 
            
          <td height="28" align="center" background="../images/reg.gif"><strong><font color="#FF0000">��д����</font></strong></td>
          </tr>
          <tr align="center"> 
            
          <td height="185" align="center"> 
            <table width="435" height="166" border="0" align="center" cellpadding="0" cellspacing="0">
            <form action="listnews.jsp?newsId=<%=servlet.requestInt(request,"newsId")%>&submit=true" method="post" name="reply"  onSubmit="return check();">
			    <tr> 
                  <td height="26" align="center" valign="middle">����:</td>
                  <td height="26" align="left" valign="middle"> <input type="text" size="16" name="user" class="text"></td>
                </tr>
                <tr> 
                  <td width="109" height="118" align="center" valign="middle">����:</td>
                  <td width="326" height="118" align="left" valign="middle"> <textarea name="content" cols="40" rows="6" class="text"></textarea></td>
                </tr>
                <tr> 
                  <td height="22" colspan="2" align="center" valign="middle"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr> 
                        <td width="67%" height="21" align="right">
                          <input name="image" type="image" src="../images/sendarticle.gif"></td>
                        <td width="33%"></td>
                      </tr>
                    </table></td>
                </tr>
				</form>
              </table>
			  </td>
          </tr>
        </table>
        <br>
      </td>
    <td background="../images/middle_right.gif">&nbsp;</td>
  </tr>
</table>

</body>
<%@ include file="../include/copyleft.jsp"%>