<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>;
<script type="text/javascript"
	src="http://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("input").focus(function() {
			$("input").css("background-color", " #DA70F5");
		});
		$("input").blur(function() {
			$("input").css("background-color", "#97D1E0");
		});
	});
</script>
</head>
<body
	style="background-image: url('11111.jpg'); width: 100%; height: 100%;"
	marginheight="220em">
	<div
		style="margin: 0.5em 17.3em; font-family: 仿宋; color: white; font-size: 40px;">
		<b> Login</b>
	</div>
	<br />
	<div>
		<form action="login.jsp" method="post">
			<center>
				用户名:<input type="text" name="uname"
					style="width: 250px; height: 30px; background-color: #5CBED6" /><br />
				<br /> 密&nbsp;码:<input type="password" name="upass"
					style="width: 250px; height: 30px; background-color: #5CBED6" /><br />
				<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="image" width="250px" height="40px" src="button.JPG"
					value="登陆"> &nbsp;&nbsp;&nbsp;
				<!--  <input type="reset" value="重置"><br/> -->
			</center>
		</form>
		<center>
			<%
				String name = request.getParameter("uname");
				String pwd = request.getParameter("upass");

				if (null != name && null != pwd && "yqx".equals(name) && "123456".equals(pwd)) {
					response.setHeader("refresh", "3;url=loginOK.jsp");//定时跳转
					session.setAttribute("userid", name);//将用户名保存在session中
			%>
			<p>用户登陆成功，3秒后跳转到欢迎页</p>
			<p>
				如果没有跳转请点击<a href="loginOK.jsp">这里</a>
			</p>
			<%
				}
			%>
			<!-- <h3>对不起。你输入的密码错误</h3> -->
			<%
				
			%>
		</center>
	</div>
</body>
</html>