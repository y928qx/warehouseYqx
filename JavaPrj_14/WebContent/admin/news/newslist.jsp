<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sanqing.persistence.*" %>
<%@ include file="check.jsp"%>

<jsp:useBean id="Pagination" class="com.sanqing.common.Pagination"/>
<jsp:useBean id="news" scope="page" class="com.sanqing.news.manage.News"/>

<%
	int curPages = Pagination.curPages(Pagination.strPage(request,"page"));//ҳ����
	Pagination.setRows(20);//ÿҳ��ʾ20��
	int totalPages = Pagination.getPages(news.sumNews());//ȡ����ҳ��
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�޸�����</title>
<link rel="stylesheet" href="../../css/admin.css" type="text/css">
</head>

<body>
 <form action="search.jsp" method="post"> 
<table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
  <tr>
      <td height="28" align="center" class="title">�������£�&nbsp;&nbsp; 
        <input type="text" name="search" size="20">&nbsp;&nbsp;
      <input type="submit" value="Search"></td>
  </tr>

</table>
  </form>
<br>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="73"><table width="100%" height="12%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
        <tr align="center"> 
          <td width="71%" height="32">������Ŀ������ʱ�䣩</td>
          <td width="10%">�������</td>
          <td width="10%">�༭</td>
          <td width="9%">ɾ��</td>
        </tr>
<%
	if(news.sumNews() > 0){
	Iterator rt=news.listNews();
	Iterator rs = Pagination.getPageSet(rt,curPages);
	int i=1;//�������ÿҳ��ʾ������
	while(rs.hasNext()){
		NEWSTable tableNews = (NEWSTable)rs.next();
%>
        <tr align="center"> 
          <td height="28"> <table width="100%" height="27" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="67%" height="27" align="center"><%=tableNews.getHeadTitle()%></td>
                <td width="33%" align="center"><%=tableNews.getNewsTime()%></td>
              </tr>
            </table></td>
          <td height="28"> <%=tableNews.getHits()%> </td>
          <td height="28"><a href=editNews.jsp?newsId=<%=tableNews.getNewsId()%>><img src="../../images/admin/edit.gif" alt="�༭��Ŀ" height="18" border="0"></a></td>
          <td height="28"><a href="delNews.jsp?newsId=<%=tableNews.getNewsId()%>"><img src="../../images/admin/del.gif" width="16" height="16" border="0"></a></td>
        </tr>
        <%
		i=i+1;
		if(i>20)
			break;
	}
%>
        <%}else{%>
        <tr align="center"> 
          <td height="27" colspan="4" class="title">�Բ��𣬻�û��������£�������ӣ�</td>
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
