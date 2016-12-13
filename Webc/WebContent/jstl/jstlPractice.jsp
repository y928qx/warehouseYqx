<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <c:set scope="page" var="name2"  >text</c:set>
    ${'${' }name2}=${name2 }
<p>移除变量    </p>
<c:remove var="name2"/>
${'${'} name2}=${name2 }
<hr/>
<p>异常的捕捉</p>
<:c var="errormassage"></:c>
${param.a+1 }
<c:out value="${errormassage }"></c:out>
<p>param在浏览器地址中输入值，写入：？a=20；即可</p>
</body>
</html>
