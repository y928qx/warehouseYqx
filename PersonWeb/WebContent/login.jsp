<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页</title>
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
	style="background-image: url('img/11111.jpg'); background-repeat:no-repeat; width: 100%; height: 100%;"
	marginheight="220em">
	<div
		style="margin: 0.5em 17.3em; font-family: 仿宋; color: white; font-size: 40px;">
		<b> Login</b>
	</div>
	<br />
	<div>
		<form action="<%=request.getContextPath()%>/LoginServlet"
			method="post">
			<center>
				用户名:<input type="text" name="uname"
					style="width: 250px; height: 30px; background-color: #5CBED6" /><br />
				<br /> 密&nbsp;&nbsp;码:<input type="password" name="upass"
					style="width: 250px; height: 30px; background-color: #5CBED6" /><br />
				<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="image" width="250px" height="40px" src="img/button.JPG"
					value="登陆"> &nbsp;&nbsp;&nbsp;
			</center>
		</form>
	</div>
</body>
</html>