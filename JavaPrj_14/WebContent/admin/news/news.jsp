<%@ page contentType="text/html; charset=GBK" pageEncoding="GBK"%>
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
<jsp:useBean id="newsT" scope="page" class="com.sanqing.persistence.NEWSTable">
	<jsp:setProperty name="newsT" property="*"/>
</jsp:useBean>
<jsp:useBean id="kind" scope="page" class="com.sanqing.news.manage.Kind"/>
<jsp:useBean id="news" scope="page" class="com.sanqing.news.manage.News"/>
<jsp:useBean id="column" scope="page" class="com.sanqing.news.manage.Column"/>


<%
	String action=servlet.requestStr(request,"submit");
	if(action.equals("true")){
		System.out.println(newsT.getContent());
		if(newsT.getClassId() != 0){
			//执行插入
			news.insNews(newsT.getClassId(),newsT.getKindId(),newsT.getMyOther(),newsT.getHeadTitle(),newsT.getContent(),newsT.getConnect(),newsT.getAuthor(),newsT.getEditor(),newsT.getNewsFrom(),newsT.getTop());
			out.println("<script language=javascript>alert('添加成功!');location.href='news.jsp';</script>");
		}
		else{
			out.println("<script language=javascript>alert('请您先选择栏目!');history.back();</script>");
		}
	}
%>

<html>
<head>
<title>添加文章</title>
<link rel="stylesheet" href="../../css/admin.css" type="text/css">
<Script src="../../js/admin/news/addnews.js"></Script>
<%
	//类别
	Iterator rs_kind = kind.allKind();
%>
<script language = "JavaScript">
	var onecount;//定义变量
	onecount=0;//赋值为o
	subcat = new Array();//定义个数组
        //--------jsp--------语句
		<%
	        int count = 0;
			while(rs_kind.hasNext()){
				NEWSKind tableKind = (NEWSKind)rs_kind.next();
        %>
				subcat[<%=count%>] = new Array("<%=tableKind.getContent()%>","<%=tableKind.getClassId()%>","<%=tableKind.getKindId()%>");
        <%
	     	   count = count + 1;//指针每循环一次,count值+1
			}
        %>
	onecount=<%=count%>;

function changelocation(classId){
    document.news.kindId.length = 0;//设置默认的时候为0 
    var classId=classId;//将栏木的值给
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
<form action="news.jsp?submit=true" method="post" name="news" onSubmit="return check();">
<table width="98%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
    <% 
		//判断有无栏目，如没有就进入到添加栏目页面
   		if(column.isNullColumn()){
	%>
    <tr align="center"> 
      <td height="23" colspan="2"> <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr> 
            <td height="25" align="center"><font color="#FFFFFF"><strong>添加文章</strong></font> 
            </td>
          </tr>
        </table></td>
    </tr>
    <tr align="center"> 
      <td width="16%" height="30">文章类型<br></td>
      <td width="84%" align="left">&nbsp;&nbsp;栏目： 
        <select name="classId" onChange="changelocation(document.news.classId.options[document.news.classId.selectedIndex].value)">
          <option value="0">请选择栏目</option>
          <%
		  //列出栏目
		  Iterator rs_column = column.getColumn();
		  while(rs_column.hasNext()){
				NEWSClass tableClass = (NEWSClass)rs_column.next();	
      %>
          <option value="<%=tableClass.getClassId()%>"><%=tableClass.getContent()%></option>
          <%
				}
	   %>
        </select> &nbsp;&nbsp; 类别： 
        <select name="kindId">
          <option value="0">请选择类别</option>
        </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 原创: 
        <input type="radio" name="myOther" value="0" checked> &nbsp;转载： 
        <input type="radio" name="myOther" value="1"> </td>
    </tr>
    <tr align="center"> 
      <td height="28">文章标题&nbsp; </td>
      <td height="28" align="left">&nbsp; <input name="headTitle" type="text" id="headTitle" size="30"></td>
    </tr>
    <tr align="center"> 
      <td height="221">文章内容</td>
      <td align="left">&nbsp; <textarea rows="12" name="content" cols="60"></textarea> 
      </td>
    </tr>
    <tr align="center"> 
      <td height="27">相关文章</td>
      <td align="left">&nbsp; <input name="connect" type="text" id="connect" size="20"></td>
    </tr>
    <tr align="left"> 
      <td height="25" align="center">作者&nbsp; </td>
      <td height="25"> &nbsp; <input type="text" size="20" name="author"></td>
    </tr>
    <tr align="center"> 
      <td height="26">编辑</td>
      <td height="26" align="left">&nbsp; <input type="text" size="20" name="editor"></td>
    </tr>
    <tr align="center"> 
      <td height="28">出处<br></td>
      <td align="left">&nbsp; <input name="newsFrom" type="text" id="newsFrom" size="25"> 
      </td>
    </tr>
    <tr align="center"> 
      <td height="26" colspan="2"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
          <tr> 
            <td width="25%" align="center">文章置顶 
              <input name="top" type="checkbox" id="top" value="1"></td>
            <td width="75%" align="center">&nbsp; <input type="submit" value="提交"> 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="重置"> 
            </td>
          </tr>
        </table></td>
    </tr>
    <%
					}
			else{
			out.println("<Script language=JavaScript>alert('请您先添加栏目');location.href='../column/column.jsp';</Script>");
			}
	%>
</table>
  </form>
</body>
</html>