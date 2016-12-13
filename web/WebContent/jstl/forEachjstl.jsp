<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
String[] asd={"今天","天气","很热","老王","你","怎么看" };
      request.setAttribute("today", asd);
%>
	<c:forEach var="sowhat" items="${today}">
${sowhat }<br />
	</c:forEach>
	<c:forEach var="i" begin="1" end="15" step="1">
${i }&nbsp;
</c:forEach>
</body>
</html>