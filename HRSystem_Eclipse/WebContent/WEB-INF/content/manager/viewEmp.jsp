<%--
��վ: <a href="http://www.crazyit.org">���Java����</a>
author  yeeku.H.lee kongyeeku@163.com
version  1.0
Copyright (C), 2001-2012, yeeku.H.Lee
This program is protected by copyright laws.
Program Name:
Date: 
--%>

<%@ page contentType="text/html; charset=gb2312" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�鿴������ȫ��Ա��</title>
</head>
<body>
	<%@include file="../header.jsp"%>
	<%@include file="mgrheader.jsp"%>
	<s:form action="delete">

	
	<table width="960" align="center"
		background="${pageContext.request.contextPath}/images/bodybg.jpg">
		<tr>
			<td><br>
				<table width="80%" border="0" align="center" cellspacing="1"
					bgcolor="#cccccc">
					<tr bgcolor="#e1e1e1">
						<td colspan="6"><div class="mytitle">�����ڲ鿴���ŵ�ȫ��Ա��</div></td>
					</tr>
					<tr class="pt11" height="45">
						<td><b>Ա����</b></td>
						<td><b>����</b></td>
						<td><b>����</b></td>
						<td><b>���</b></td>
						<td><b>����</b></td>
						<td><s:submit value="ɾ��Ա��" theme="simple"/></td>
					</tr>
					<s:iterator value="emps" status="index">
						<s:if test="#index.odd == true">
							<tr style="background-color: #dddddd" class="pt11" height="32">
						</s:if>
						<s:else>
							<tr class="pt11" height="32">
						</s:else>
						<td><s:property value="empName" /></td>
						<td><s:property value="empPass" /></td>
						<td><s:property value="amount" /></td>
						<td><s:property value="empshengao" /></td>
						<td><s:property value="emptizhong" /></td>
						<td><input type="checkbox" name="ids" value="<s:property value="empid" />" /></td>
						
					</s:iterator>
				</table></td>
		</tr>
	</table>
		
	<%@include file="../footer.jsp"%>
	</s:form>
</body>
</html>