<%@ page contentType="text/html;charset=GBK"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sanqing.persistence.*" %>
<%@ include file="check.jsp"%>

<jsp:useBean id="newsT" scope="page" class="com.sanqing.persistence.NEWSTable"/>
<jsp:setProperty name="newsT" property="*"/>
<jsp:useBean id="linkNews" class="com.sanqing.news.LinkNews"/>
<jsp:useBean id="userN" scope="page" class="com.sanqing.news.UserNews"/>
<jsp:useBean id="kind" scope="page" class="com.sanqing.news.manage.Kind"/>
<jsp:useBean id="column" scope="page" class="com.sanqing.news.manage.Column"/>

<%
	//�û������������
	String action=servlet.requestStr(request,"submit");
	if(action.equals("true")){
		if(newsT.getClassId() != 0){
			userN.insUserNews(newsT.getClassId(),newsT.getKindId(),newsT.getHeadTitle(),newsT.getContent(),user,newsT.getNewsFrom());
			servlet.responseUrl(response,"personal.jsp");
		}
	}
%>

<%@ include file="../include/head.jsp"%>
<link rel="stylesheet" href="../css/text.css" type="text/css">
<script src="../js/news/usernews.js"></script>
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
<body topMargin=0>

<table width="760" height="392" border="0" align="center" cellpadding="0" cellspacing="0">
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
      
    <td height="372" align="center" valign="top"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="22">&nbsp; <a href="personal.jsp">�û�������</a>>><a href="userarticle.jsp">�������</a></td>
        </tr>
      </table>
      <table width="98%" height="40%" border="1" align="center" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#CCCCCC">
        <form action="userNews.jsp?submit=true" method="post" name="news" onSubmit = "return check();">
          <tr align="center" background="../images/reg.gif"> 
            <td height="28" colspan="2"><font color="#FF0000" size="2"><strong>�������</strong></font></td>
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
        </select> &nbsp;&nbsp;<font color="#ff0000">��ϵͳ��֧��ubb����</font>
            </td>
          </tr>
          <tr align="center"> 
            <td height="32">���±���</td>
            <td align="left">&nbsp; <input name="headTitle" type="text" class="text" id="headTitle" size="30"> 
              &nbsp;&nbsp; <font color="#FF0000">������д</font></td>
          </tr>
          <tr align="center"> 
            <td height="245">��������</td>
            <td align="left">&nbsp; <textarea rows="15" name="content" cols="70" class="text"></textarea> 
            </td>
          </tr>
          <tr align="center"> 
            <td height="28">����<br></td>
            <td align="left">&nbsp; <input name="newsFrom" type="text" class="text" id="newsFrom" size="25"> 
            </td>
          </tr>
          <tr align="center"> 
            <td height="26" colspan="2"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                <tr> 
                  <td align="center"> <input name="submit" type="submit" value="����"> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="reset" type="reset" value="����"> 
                  </td>
                </tr>
              </table></td>
          </tr>
        </form>
      </table><br></td>
    </tr>
</table>
</body>
<%@ include file="../include/copyleft.jsp"%>