<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="com.oracle.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>out演示</p>
<p>有以下例子可知当设置为false时候value里面的标签才会生效</p>
<c:out value="<b>china</b>"  escapeXml="true" /><br/>
<c:out value="<b>china</b>" escapeXml="false" /><br/>
<c:out value="<b>china</b>">测试答案</c:out><br/>
<c:out value="*******" default="这是设置的默认值如果在" ></c:out><br/>
<c:out value="${这里的值会让value未定义 }" default="这是设置的默认值如果在" ></c:out><br/>


</body>
</html>