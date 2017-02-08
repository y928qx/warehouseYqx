<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sanqing.persistence.*" %>
<%@ include file="check.jsp" %>

<jsp:useBean id="Pagination" class="com.sanqing.common.Pagination"/>
<jsp:useBean id="news" scope="page" class="com.sanqing.news.manage.News"/>

<%
	int curPages = Pagination.curPages(Pagination.strPage(request,"page"));//ҳ����
	Pagination.setRows(20);//ÿҳ��ʾ20��
	int totalPages = Pagination.getPages(news.sumReplyNews());//ȡ����ҳ��
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�޸�����</title>
<link rel="stylesheet" href="../../css/admin.css" type="text/css">
<script src=../../js/admin/news/show.js></script>
</head>

<body>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="29" align="center"><font color="#FFFFFF"><strong>�������۹���</strong></font></td>
  </tr>
</table>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="73"><table width="100%" height="12%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
        <tr align="center"> 
          <td width="75%" height="32">������Ŀ������ʱ�䣩</td>
          <td width="13%">���۴���</td>
          <td width="12%" colspan="2">�쿴����</td>
        </tr>
        <%
	if(news.isTalk()){
		Iterator rs = Pagination.getPageSet(news.listReplyNews(),curPages);
		int i=1;//�������ÿҳ��ʾ������
		while(rs.hasNext()){
			NEWSTable tableNews = (NEWSTable)rs.next();
%>
        <tr align="center"> 
          <td height="28"> <table width="100%" height="27" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="67%" height="27" align="center"><a href="../../news/listnews.jsp?newsid=<%=tableNews.getNewsId()%>"><%=tableNews.getHeadTitle()%></a></td>
                <td width="33%" align="center"><%=tableNews.getNewsTime()%></td>
              </tr>
            </table></td>
          <td height="28"><%=news.sumReply(tableNews.getNewsId())%> </td>
          <td colspan="2"><a href="shownewsreply.jsp?newsId=<%=tableNews.getNewsId()%>"><img src="../../images/admin/edit.gif" alt="�鿴����" height="18" border="0"></a></td>
        </tr>
        <%
		i=i+1;
		if(i>20)
			break;
	}
%>
        <%}else{%>
        <tr align="center"> 
          <td height="27" colspan="4" class="title">�Բ��𣬻�û�������۵����£�</td>
        </tr>
        <%}%>
      </table></td>
  </tr>
  <tr> 
    <td height="31"> 
      <table width="100%" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="73%" height="29">&nbsp;</td>
          <td width="14%" align="center" valign="bottom"> 
            <%if(curPages>1){%>
            <a href="newslist.jsp?page=<%=curPages-1%>"><img src="../../images/prev.gif" width="36" height="11" border="0"></a> 
            <%}%>
          </td>
          <td width="13%" valign="bottom"> 
            <%if(curPages<totalPages){%>
            <a href="newslist.jsp?page=<%=curPages+1%>"><img src="../../images/next.gif" width="36" height="11" border="0"></a> 
            <%}%>
          </td>
        </tr>
      </table></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
