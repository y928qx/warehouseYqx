<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sanqing.servlet.*" %>
<%@ page import="com.sanqing.persistence.*" %>
<%@ include file="check.jsp"%>

<jsp:useBean id="Pagination" class="com.sanqing.common.Pagination"/>
<jsp:useBean id="news" scope="page" class="com.sanqing.news.manage.News"/>

<%
	//�������
	String action=servlet.requestStr(request,"submit");
	if(action.equals("true")){
		news.shNews(servlet.requestInt(request,"newsId"));
		DOServlet.responseUrl(response,"shNews.jsp");
	}
%>
<%
	int curPages = Pagination.curPages(Pagination.strPage(request,"page"));
	Pagination.setRows(20);//ÿҳ��ʾ10��
	int totalPages = Pagination.getPages(news.sumShNews());//ȡ����ҳ��
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�޸�����</title>
<link rel="stylesheet" href="../../css/admin.css" type="text/css">
</head>

<body>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="73"><table width="100%" height="12%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
        <tr align="center"> 
          <td width="75%" height="32">������Ŀ������ʱ�䣩</td>
          <td width="9%">���</td>
          <td width="8%">�༭</td>
          <td width="8%">ɾ��</td>
        </tr>
        <%
	if(news.sumShNews() > 0){
	Iterator rs = Pagination.getPageSet(news.listShNews(),curPages);
	int i=1;//�������ÿҳ��ʾ������
	while(rs.hasNext()){
		NEWSTable tableNews = (NEWSTable)rs.next();
%>
        <tr align="center"> 
          <td height="28"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="68%" height="25" align="center"><a href="../../news/listnews.jsp?newsid=<%=tableNews.getNewsId()%>"><%=tableNews.getHeadTitle()%></a>&nbsp;</td>
                <td width="32%">ʱ��</td>
              </tr>
            </table> </td>
          <td width="9%"><a href="shNews.jsp?newsId=<%=tableNews.getNewsId()%>&submit=true"><img src="../../images/admin/pass.gif" width="16" height="16" border="0"></a></td>
          <td width="8%"><a href=editNews.jsp?newsId=<%=tableNews.getNewsId()%>><img src="../../images/admin/edit.gif" alt="�༭��Ŀ" height="18" border="0"></a></td>
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
            <a href="shnews.jsp?page=<%=curPages-1%>"><img src="../../images/prev.gif" width="36" height="11" border="0"></a> 
            <%}%>
          </td>
          <td width="13%" valign="bottom"> 
            <%if(curPages<totalPages){%>
            <a href="shnews.jsp?page=<%=curPages+1%>"><img src="../../images/next.gif" width="36" height="11" border="0"></a> 
            <%}%>
          </td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
