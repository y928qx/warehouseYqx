<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="java.sql.*" %>
<%@ include file="check.jsp" %>


<jsp:useBean id="news" scope="page" class="com.sanqing.news.manage.News"/>

<%
	news.delNewsReply(servlet.requestInt(request,"replyId"));
	servlet.responseUrl(response,"newstalk.jsp");
%>