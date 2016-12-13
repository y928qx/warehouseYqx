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
	<form method="post">
		请输入你的成绩：<input type="text" name="score"> <input type="submit"
			value="提交成绩"><input type="reset" value="重写">
	</form>
	<c:set var="color" value="purple"/>
	<c:set var="n" value="${param.score }"/>
	<c:if test="${n>=60 }">
		<c:set var="color" value="red"></c:set>
	</c:if>
	 <%-- <c:if test="${n=null }">
		 <p>当没有输入的时候</p> 
	</c:if>  --%>
	<font color="green" size="30"> <c:choose>
			<c:when test="${n>60 && n<70 }">
刚及格，请继续努力.
</c:when>
			<c:when test="${n>=70 && n<80 }">
还好，多考一点
</c:when>
			<c:when test="${n>=80 && n<90 }">
搞得不丑，继续努力。
</c:when>
			<c:when test="${n>=90 && n<100 }">
接近满分，你是最棒的   頑張って！!!!
</c:when>
			<c:when test="${n>100 || n<0 }">
请输入正确的数字
</c:when>
<c:when test="${n<60 && n>=0 }">
没及格，你要努力了啊。
</c:when>
		</c:choose>
	</font>
</body>
</html>