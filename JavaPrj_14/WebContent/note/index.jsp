<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sanqing.persistence.*" %>

<jsp:useBean id="guest" scope="page" class="com.sanqing.news.note.Guest"/>
<jsp:useBean id="Pagination" class="com.sanqing.common.Pagination"/>
<%-- ��ҳ --%>
<%
	int curPages = Pagination.curPages(Pagination.strPage(request,"page"));
	Pagination.setRows(5);//ÿҳ��ʾ5��
	int totalPages = Pagination.getPages(guest.sumNote());//ȡ����ҳ��
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>���ŷ���ϵͳ</title>
<link rel="stylesheet" href="text.css" type="text/css">
</head>

<body leftMargin=0  topMargin=0 marginheight="0" marginwidth="0" bgcolor="#ffffff">
<div align="center">
  <center>
  <table align=center border=0 cellPadding=0 cellSpacing=0 width=630>
    <tr>
      <td width=134 height=37><IMG height=37 src="images/top_left.gif" width=134></td>
      <td width="100%" background=images/top_middle.gif height=37 valign="middle">
      <p align="left"><a href="www.sanqing.com"><font color="#FFFFFF">����</font></a><font color="#FFFFFF"><a href="http://www.sanqing.com"><font color="#FFFFFF">���·���</font></a>���������������������� 
            �� �� ��<a href="login.jsp"><font color="#FFFFFF">����Ա���</font></a></font></td>
      <td width=49 height=37><IMG height=37 src="images/top_right.gif" width=49></td>
    </tr>
  </table>
  </center>
</div>

<div align=center>
  <center>
    <table align=center border=0 cellPadding=0 cellSpacing=0 width=630>
      <tr>
        <td width=11 background="images/middle_left.gif">��</td>
        <td width=608 align="center"> 
          <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; margin-top:1; margin-bottom:1" bordercolor="#111111" width="90%" id="AutoNumber9" height="25">
            <tr>
              <td width="100%" height="25"> <p align="right"><a href="add.jsp"> 
                  <img border="0" src="images/post.gif" width="99" height="25"></a></td>
            </tr>
          </table>
		  <%if(guest.sumNote()==0){%>
		  �Բ��𣬻�û�����ݣ�
		  <%}else{%>
          <table border="2" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#99BB99" width="90%" id="AutoNumber1" height="186">
            <%
		Iterator rs = Pagination.getPageSetNote(guest.listNote(),curPages);
		//Iterator rs = Pagination.getPageSet(guest.listNote(),curPages);
		int i=1;//�������ÿҳ��ʾ������
		while(rs.hasNext()){
			NOTEGuest tableGuest = (NOTEGuest)rs.next();
	%>
            <tr>
              <td width="100%"> 
                <div align="center">
            <center>
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="542" id="AutoNumber2">
                      <tr>
                        <td width="129"align="center"> 
                          <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="81%" id="AutoNumber3" height="139">
                            <tr>
                    <td width="100%" height="29">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="27">
                                  <tr>
                                    <td width="100%" height="27"> 
                                      <p align="center"><%=tableGuest.getUserName()%></td>
                      </tr>
                    </table>
                    </td>
                  </tr>
                  <tr>
                              <td width="100%" height="110"> 
                                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="109">
                                  <tr>
                                    <td width="100%" height="109"> 
                                      <p align="center"><img src="<%=tableGuest.getImage()%>" width="84" height="95"></td>
                      </tr>
                    </table>
                    </td>
                  </tr>
                </table>
                </td>
                        <td width="1" height="10" rowspan="3" bgcolor="#99BB99">��</td>
                <td width="7" height="15" rowspan="3" align="center" valign="top">
                </td>
                <td width="402" height="15" rowspan="3" align="center" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="93%" id="AutoNumber4" height="166">
                            <tr>
                    <td width="100%" height="36">
                    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#99BB99" width="99%" id="AutoNumber5" height="27">
                      <tr>
                        <td width="100%" height="27" valign="middle">
                        &nbsp;�������⣺<%=tableGuest.getHeadTitle()%></td>
                      </tr>
                    </table>
                    </td>
                  </tr>
                  <tr>
                    <td width="100%" height="38">
                    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#99BB99" width="99%" id="AutoNumber6" height="28">
                      <tr>
                        <td width="100%" height="28" background="images/note_bg.gif">
                        &nbsp;�������ݣ������������������� <img border="0" src="images/time.gif" width="16" height="15">:���ڡ�<%=tableGuest.getNoteTime()%></td>
                      </tr>
                    </table>
                    </td>
                  </tr>
                  <tr>
                              <td width="100%" height="56" align="center"> 
                                <table border="0" cellpadding="0" cellspacing="0" style="word-break:break-all" bordercolor="#111111" width="100%" height="56">
                                  <tr> 
                                    <td width="100%" height="56" align="left" valign="top"> 
                                      <table width="360" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr> 
                                          <td height="18">��&nbsp;<%=tableGuest.getContent()%></td>
                                        </tr>
                                      </table></td>
                                  </tr>
                                </table></td>
                  </tr>
                  <%
				  	if(guest.isReply(tableGuest.getNoteId())){
				  %>
				  <tr>
                              <td width="100%" height="13" valign="top"> 
                                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="18">
                                  <%
								  	Iterator rs_reply = guest.listReply(tableGuest.getNoteId());
									while(rs_reply.hasNext()){	
										NOTEReply tableReply = (NOTEReply)rs_reply.next();
								  %>
                                  <tr> 
                                    <td width="61%" height="18">&nbsp;&nbsp;&nbsp;<font color="#FF6600"><%=tableReply.getContent()%></font></td>
                                    <td width="39%"><font color="#99BB99">�ظ�ʱ��:<%=tableReply.getReplyTime()%></font></td>
                                  </tr>
                                  <%}%>
                                </table></td>
                  </tr>
				  <%}%>
                  <tr>
                              <td width="100%" height="18"> &nbsp; ����<a href="<%=tableGuest.getUrl()%>" target="_blank"><img border="0" src="images/homepage.gif" width="45" height="16" alt="<%=tableGuest.getUrl()%>"></a>��<a href="mailto:<%=tableGuest.getEmail()%>"><img border="0" src="images/email.gif" width="45" height="16" alt="<%=tableGuest.getEmail()%>"></a>�� 
                                <a href="http://search.tencent.com/cgi-bin/friend/user_show_info?ln=<%=tableGuest.getQq()%>" target="_blank"><img src="images/oicq.gif" width="45" height="16" alt="<%=tableGuest.getQq()%>" border="0" ></a>&nbsp;&nbsp; 
                                <img border="0" src="images/delete.gif" width="45" height="16">��<img border="0" src="images/reply.gif" width="45" height="16">���� 
                              </td>
                  </tr>
                </table>
                </td>
              </tr>
              <tr>
                        <td width="129" height="18" align="center" valign="top"> 
                          <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="18">
                            <tr>
                              <td width="100%" height="18"> 
                                <p align="center">��<%=guest.sexStr(tableGuest.getSex())%></td>
                  </tr>
                </table>
                </td>
              </tr>
               <tr> 
                        <td width="129" height="14" align="center" valign="top">&nbsp;</td>
              </tr>
            </table>
            </center>
          </div>
          </td>
        </tr>
    	<%		
			i=i+1;
			if(i>5)
				break;
			}
		%>
	</table>
	<%}%>
      <br>  
          <table border="2" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#009933" width="90%" id="AutoNumber7" height="1">
            <tr>
          <td width="100%" height="1" background="images/bg_top.gif" align="center" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber8" height="29">
		    <tr>
              <td width="76%" height="29" valign="middle">
              <p align="right">��
				��<%=curPages%>ҳ &nbsp;&nbsp;&nbsp;��<%=totalPages%>ҳ&nbsp;&nbsp;&nbsp;
				<%if(curPages>1){%>
				<a href="index.jsp?page=<%=curPages-1%>">��һҳ</a>&nbsp;&nbsp;&nbsp;
				<%}%>
				<%if(curPages<totalPages){%>
				<a href="index.jsp?page=<%=curPages+1%>">��һҳ</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<%}%>
         </td>
            </tr>
          </table>
          </td>
      </tr>
      </table> 
      <br>
      </td>
        <td width=11 background="images/middle_left.gif" height=302>��</td>
    </tr>
    </table>
  </center>
</div>
<div align=center>
  <center>
  <table border=0 cellpadding=0 cellspacing=0 width=630>
    <tr>
    <td width=133 height=72><IMG height=72 src="images/bottom_left.gif" width=133></td>
    <TD width="100%" background=images/bottom_middle.gif height=72>
    <font color="#FFFFFF">All Rights Reserved.Copyleft &copy; 2001-2003 
    <a href="http://www.sanqing.com"><font color="#FFFFFF">www.sanqing.com</font></a></font><a href="http://www.sanqing.com"><font color="#FFFFFF">
    </font></a> <font color="#FFFFFF">��������:<a href="mailto:lovehere2@163.net"><font color="#FFFFFF">��ӥ</font></a></font></TD>
    <td width=22 height=72><IMG height=72 src="images/bottom_right.gif" width=22></td>
    </tr>
  </table>
  </center>
</div>
</body>
</html></textarea>