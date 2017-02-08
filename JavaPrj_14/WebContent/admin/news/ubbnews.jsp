<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sanqing.persistence.*" %>

<jsp:useBean id="sessionManager" class="com.sanqing.servlet.SessionManager"/>
<jsp:useBean id="servlet" scope="page" class="com.sanqing.servlet.DOServlet"/>
<%
	String adminName=sessionManager.getSession(session,"user");
	if(adminName==null)
	servlet.responseUrl(response,"../../error/error.jsp");
%>
<jsp:useBean id="newsT" scope="page" class="com.sanqing.persistence.NEWSTable"/>
<jsp:setProperty name="newsT" property="*"/>
<jsp:useBean id="kind" scope="page" class="com.sanqing.news.manage.Kind"/>
<jsp:useBean id="news" scope="page" class="com.sanqing.news.manage.News"/>
<jsp:useBean id="column" scope="page" class="com.sanqing.news.manage.Column"/>


<%
	/**
	 * ��������
	 */
	String action=servlet.requestStr(request,"submit");
	if(action.equals("true")){
	/**
	out.print(newsT.getClassId());
	out.print(newsT.getKindId());
	out.print(newsT.getMyOther());
	out.print(newsT.getHeadTitle());
	out.print(newsT.getContent());
	out.print(newsT.getConnect());
	out.print(newsT.getAuthor());
	out.print(newsT.getEditor());
	out.print(newsT.getNewsFrom());
	out.print(newsT.getTop());
	*/
		if(newsT.getClassId() != 0){
			//ִ�в���
			news.insUbbNews(newsT.getClassId(),newsT.getKindId(),newsT.getMyOther(),newsT.getHeadTitle(),newsT.getContent(),newsT.getConnect(),newsT.getAuthor(),newsT.getEditor(),newsT.getNewsFrom(),newsT.getTop());
			out.println("<script language=javascript>alert('��ӳɹ�!');location.href='ubbnews.jsp';</script>");
		}
		else{
			out.println("<script language=javascript>alert('������ѡ����Ŀ!');history.back();</script>");
		}
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�������</title>
<link rel="stylesheet" href="../../css/admin.css" type="text/css">
<Script src="../../js/admin/news/addnews.js"></Script>
<%
	//���
	Iterator rs_kind = kind.allKind();
%>
<script language = "JavaScript">
	var onecount;//�������
	onecount=0;//��ֵΪo
	subcat = new Array();//���������
        //--------jsp--------���
		<%
	        int count = 0;
			while(rs_kind.hasNext()){
				NEWSKind tableKind = (NEWSKind)rs_kind.next();
        %>
				subcat[<%=count%>] = new Array("<%=tableKind.getContent()%>","<%=tableKind.getClassId()%>","<%=tableKind.getKindId()%>");
        <%
	     	   count = count + 1;//ָ��ÿѭ��һ��,countֵ+1
			}
        %>
	onecount=<%=count%>;

function changelocation(classId){
    document.news.kindId.length = 0;//����Ĭ�ϵ�ʱ��Ϊ0 
    var classId=classId;//����ľ��ֵ��
    var i;
    for (i=0;i<onecount;i++){
        if (subcat[i][1] == classId){ 
             document.news.kindId.options[document.news.kindId.length] = new Option(subcat[i][0], subcat[i][2]);
        }        
    }
}    
</script>
</head>

<body>
<form action="ubbnews.jsp?submit=true" method="post" name="news" onSubmit="return check();">
<table width="98%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
    <% 
		//�ж�������Ŀ����û�оͽ��뵽�����Ŀҳ��
   		if(column.isNullColumn()){
	%>
    <tr align="center"> 
      <td height="23" colspan="2"> <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr> 
            <td height="25" align="center"><font color="#FFFFFF"><strong>�������</strong></font> 
            </td>
          </tr>
        </table></td>
    </tr>
    <tr align="center"> 
      <td width="16%" height="30">��������<br></td>
      <td width="84%" align="left">&nbsp;&nbsp;��Ŀ�� 
        <select name="classId" onChange="changelocation(document.news.classId.options[document.news.classId.selectedIndex].value)">
          <option value="0">��ѡ����Ŀ</option>
          <%
		  //�г���Ŀ
		  Iterator rs_column = column.getColumn();
		  while(rs_column.hasNext()){
				NEWSClass tableClass = (NEWSClass)rs_column.next();	
      %>
          <option value="<%=tableClass.getClassId()%>"><%=tableClass.getContent()%></option>
          <%
				}
	   %>
        </select> &nbsp;&nbsp; ��� 
        <select name="kindId">
          <option value="0">��ѡ�����</option>
        </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ԭ��: 
        <input type="radio" name="myOther" value="0" checked> &nbsp;ת�أ� 
        <input type="radio" name="myOther" value="1"> </td>
    </tr>
    <tr align="center"> 
      <td height="28">���±���&nbsp; </td>
      <td height="28" align="left">&nbsp; <input name="headTitle" type="text" id="headTitle" size="30"></td>
    </tr>
    <tr align="center"> 
      <td height="221">��������</td>
      <td align="left">&nbsp; <textarea rows="12" name="content" cols="60"></textarea> 
      </td>
    </tr>
    <tr align="center"> 
      <td height="27">�������</td>
      <td align="left">&nbsp; <input name="connect" type="text" id="connect" size="20"></td>
    </tr>
    <tr align="left"> 
      <td height="25" align="center">����&nbsp; </td>
      <td height="25"> &nbsp; <input type="text" size="20" name="author"></td>
    </tr>
    <tr align="center"> 
      <td height="26">�༭</td>
      <td height="26" align="left">&nbsp; <input type="text" size="20" name="editor"></td>
    </tr>
    <tr align="center"> 
      <td height="28">����<br></td>
      <td align="left">&nbsp; <input name="newsFrom" type="text" id="newsFrom" size="25"> 
      </td>
    </tr>
    <tr align="center"> 
      <td height="26" colspan="2"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
          <tr> 
            <td width="25%" align="center">�����ö� 
              <input name="top" type="checkbox" id="top" value="1"></td>
            <td width="75%" align="center">&nbsp; <input type="submit" value="�ύ"> 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="����"> 
            </td>
          </tr>
        </table></td>
    </tr>
    <%
					}
			else{
			out.println("<Script language=JavaScript>alert('�����������Ŀ');location.href='../column/column.jsp';</Script>");
			}
	%>
</table>
  </form>
</body>
</html>