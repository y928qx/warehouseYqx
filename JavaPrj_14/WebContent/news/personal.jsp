<%@ page contentType="text/html;charset=GBK"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sanqing.persistence.*" %>
<%@ include file="check.jsp" %>

<jsp:useBean id="linkNews" class="com.sanqing.news.LinkNews"/>
<jsp:useBean id="personal" class="com.sanqing.news.Personal"/>
<jsp:useBean id="Pagination" class="com.sanqing.common.Pagination"/>

<%
	personal.setUser(user);
%>
<%@ include file="../include/head.jsp"%>
<link rel="stylesheet" href="../css/text.css" type="text/css">
<script src=../js/news/show.js></script>
<body topMargin=0>

<table width="760" align="center" cellpadding="0" cellspacing="0">
  <tr> 
      <td width="11" rowspan="2" valign="top" background="../images/middle_left.gif">��</td>
      <td width="738" height="20"> <table align=center border=0 cellPadding=0 cellSpacing=0 width=738 height=20 background="../images/index.gif">
        <tr> 
          <td width=736 height=20 class=cdfont valign="bottom"> ������<a href="index.jsp"><font color="#333333">��ҳ</font></a>�������� 
            <%Iterator rs_class = linkNews.showClass();while(rs_class.hasNext()){NEWSClass tableClass=(NEWSClass)rs_class.next();%><a href="news.jsp?classId=<%=tableClass.getClassId()%>"><font color="#333333"><%=tableClass.getContent()%></font></a>������<%}%>����<a href="../note/index.jsp" target="_blank"><font color="#333333"> 
            ���Ա�</font></a></td>
        </tr>
        </table></td>
      <td width="11" rowspan="2" background="../images/middle_right.gif">��</td>
    </tr>
    <tr> 
      
    <td height="449" align="center" valign="top"> 
      <table width="100%" height="449" border="1" cellpadding="0" cellspacing="0" bordercolor="#999999" style="border-collapse: collapse">
        <tr> 
            <td height="18" colspan="2" valign="middle"><marquee scrollDelay=100 direction="left" onmouseover=this.stop() onmouseout=this.start()>
            ���ڱ�վ�ոս�����Ҳ������ʹ�õ�ʱ��������ܶ��bug�����ҷ�<a href="mailto:lovehere2@163.net">E-mail</a>���ң����ǵ�<a href="http://note.sanqing.com">������</a>�������� 
            </marquee></td>
          </tr>
          <tr> 
            
          <td width="23%" height="167" valign="top"> 
            <table width="98%" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td height="18" align="center"><img src="../images/yourstate.gif" width="168" height="30"></td>
              </tr>
              <tr> 
                <td height="90" valign="top" bordercolor="#FF0000"> 
                    <p style="margin-top: 3; margin-bottom: 3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="red"><u><b><%=user%></b></u></font>&nbsp;��&nbsp;���ã�</p>
                  <p style="margin-top: 3; margin-bottom: 3">&nbsp;&nbsp;����IP:<font color="red"><%=request.getRemoteAddr()%></font></p>
                    <p style="margin-top: 3; margin-bottom: 3">&nbsp;&nbsp;�ϴε�¼ʱ��:<br>&nbsp;&nbsp;&nbsp;&nbsp;<font color="red"><%=personal.timePersonal()%></font></p>
                    <p style="margin-top: 3; margin-bottom: 3">&nbsp;&nbsp;�������������:<font color="red"><%=personal.sumPersonal()%></font></p>
                    <p style="margin-top: 3; margin-bottom: 3">&nbsp;&nbsp;�������:<font color="red"><%=personal.pdmPersonal()%></font></p>
                    <p style="margin-top: 3; margin-bottom: 3">&nbsp;&nbsp;<a href="javascript:show('notice.htm')">�û���֪</a></p></td>
                </tr>
              </table></td>
            <td width="77%" rowspan="3" valign="top" height="340"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#90a0b0">
              <tr> 
                <td height="25"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <form action="usersearch.jsp" method="post">
					<tr> 
                        <td height="27" align="center">���Լ��ڱ�վ��������½�������: 
                          <select name="select">
                          <option selected value="1" checked>�������ѯ</option>
                          <option value="2">���������ݲ�ѯ</option>
                        </select> &nbsp; <input type="text" size="20" name="search"> 
                        &nbsp; <input type="submit" value="search">
                        </td>
                    </tr>
					</form>
                  </table></td>
              </tr>
              <tr> 
                <td height="81" valign="top"> <table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC"  style="border-collapse: collapse">
                    <tr> 
                      <td height="26" background="../images/reg.gif">���ڱ�վ���������</td>
                    </tr>
                    <tr> 
                      <td height="20"> 
                      <%
					  	//�Ѿ���˹������£���ҳ��
					  	int encurPages = Pagination.curPages(Pagination.strPage(request,"enpage"));
						Pagination.setRows(8);//ÿҳ��ʾ8��
						int entotalPages = Pagination.getPages(personal.sumPersonal());//ȡ����ҳ��	
					  %>
					  <%
							if(personal.sumPersonal() == 0){	
					  %>
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <tr> 
                            <td height="18" align="center">��û�б���˵�����</td>
                          </tr>
                        </table>
                        <%
							}
							else{
								Iterator enrs = Pagination.getPageSet(personal.enNews(),encurPages);
								int eni=1;
								while(enrs.hasNext()){
									NEWSTable  tableNews=(NEWSTable)enrs.next(); 						
						%>
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <tr> 
                            <td width="3%" height="18" align="center"><img src="../images/per_link1.gif" width="12" height="12"></td>
                            <td width="66%"><a href="listnews.jsp?newsId=<%=tableNews.getNewsId()%>"><%=tableNews.getHeadTitle()%></a></td>
                            <td width="31%"><%=tableNews.getNewsTime()%></td>
                          </tr>
                        </table>
                        <%
							eni++;
							if(eni>8)
								break;
								}
							}
						%>
                      </td>
                    </tr>
                  </table>
                  <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr> 
                      <td width="85%" height="22" align="right" valign="bottom"> 
                        <%if(encurPages>1){%>
                        <a href="personal.jsp?page=<%=encurPages-1%>"><img src="../images/prev.gif" width="36" height="11" border="0"></a> 
                        <%}%>
                      </td>
                      <td width="15%" align="center" valign="bottom"> 
                        <%if(encurPages<entotalPages){%>
                        <a href="personal.jsp?enpage=<%=encurPages+1%>"><img src="../images/next.gif" width="36" height="11" border="0"></a> 
                        <%}%>
                      </td>
                    </tr>
                  </table></td>
              </tr>
              <tr> 
                <td height="122" valign="top"> <table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCCC"  style="border-collapse: collapse">
                    <tr> 
                      <td height="26" background="../images/reg.gif">δ������˵�����</td>
                    </tr>
                    <tr> 
                      <td height="21"> 
                      <!--��ҳ-->
					  <%
						int uncurPages = Pagination.curPages(Pagination.strPage(request,"unpage"));
						Pagination.setRows(8);//ÿҳ��ʾ8��
						int untotalPages = Pagination.getPages(personal.sumUnNews());//ȡ����ҳ��	
					  %>
					  <%
					  			if(personal.sumUnNews() == 0){
					  %>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td height="19" align="center">��û�з����κ�����</td>
                          </tr>
                        </table>
                        <%
							}
							else{
								Iterator unrs = Pagination.getPageSet(personal.unNews(),uncurPages);							
								int uni=1;
								while(unrs.hasNext()){
									NEWSTable tableNews=(NEWSTable)unrs.next(); 
						%>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td width="3%" height="19" align="center"><img src="../images/per_link2.gif" width="12" height="12"></td>
                            <td width="82%"><%=tableNews.getHeadTitle()%></td>
                            <td width="7%" align="center"><a href="editUserNews.jsp?newsId=<%=tableNews.getNewsId()%>"><img src="../images/admin/edit.gif" width="19" height="18" border="0"></a></td>
                            <td width="8%"><a href="delUserNews.jsp?newsId=<%=tableNews.getNewsId()%>"><img src="../images/admin/del.gif" width="16" height="16" border="0"></a></td>
                          </tr>
                        </table>
                        <%
								uni++;
								if(uni>8)
									break;
								}
							}
						%>
                      </td>
                    </tr>
                  </table></td>
              </tr>
            </table>
            <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="84%" height="22" align="right" valign="bottom"> 
                  <%if(uncurPages>1){%>
                  <a href="personal.jsp?unpage=<%=uncurPages-1%>"><img src="../images/prev.gif" width="36" height="11" border="0"></a> 
                  <%}%>
                </td>
                <td width="16%" align="center" valign="bottom"> 
                  <%if(uncurPages<untotalPages){%>
                  <a href="personal.jsp?unpage=<%=uncurPages+1%>"><img src="../images/next.gif" width="36" height="11" border="0"></a> 
                  <%}%>
                </td>
              </tr>
            </table></td>
          </tr>
          <tr> 
            
          <td valign="top" height="90"> 
            <table width="99%" height="99" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                  
                <td height="21" align="center" valign="middle"><img src="../images/czl.gif" width="168" height="30"></td>
                </tr>
                <tr> 
                  
                <td height="69" valign="top"> 
                  <table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 3">
                    <tr> 
                      <td width="16%" align="right"><img src="../images/1.gif" width="20" height="21"></td>
                      <td width="84%"><a href="userNews.jsp">��������</a></td>
                    </tr>
                    <tr> 
                      <td align="right"><img src="../images/2.gif" width="21" height="20"></td>
                      <td><a href="edituser.jsp">���ĸ�������</a></td>
                    </tr>
                    <tr> 
                      <td height="25" align="right"><img src="../images/3.gif" width="21" height="21"></td>
                      <td><a href="logout.jsp">�˳���¼</a></td>
                    </tr>
                  </table>
                  
                </td>
                </tr>
              </table></td>
          </tr>
          <tr> 
            
          <td height="161" valign="top"> 
            <table width="96%" border="0" align="right" cellpadding="0" cellspacing="0">
              <tr> 
                  
                <td height="25" align="center" valign="middle"> <p><img src="../images/zngg.gif" width="168" height="30"></p></td>
                </tr>
                <tr> 
                  
                <td valign="middle"> <table width="95%" height="95" align="center" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
                    <tr>
                      <td height="95" valign="top">                  <marquee onmouseover=this.stop() onmouseout=this.start() scrollDelay=80 direction=up scrollAmount=1 height=110>
                    &nbsp;&nbsp; &nbsp; ����ע�⣬�����㷢�����º�,������������������еط���Ҫ�޸ĵĻ����뼰ʱ�޸ģ����ǻ�ÿ��������һ�Σ�������������Ѿ�ͨ�����������������޸ĵĻ��뷢<a href="mailto:redhatserver@163.net">E-mail</a>���ң� 
                    <br>
                    <br>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  ������ӥ 
                  </marquee></td>
                    </tr>
                  </table> </td>
                </tr>
              </table></td>
          </tr>
        </table>
    </td>
    </tr>
</table>

</body>
<%@ include file="../include/copyleft.jsp"%>