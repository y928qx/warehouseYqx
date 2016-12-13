<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<iframe ID='ifm2' WIDTH='260' HEIGHT='70' ALIGN='CENTER' MARGINWIDTH='0'
	MARGINHEIGHT='0' HSPACE='0' VSPACE='0' FRAMEBORDER='0' SCROLLING='NO'
	src="http://news.sina.com.cn/iframe/weather/340101.html"> </iframe>
	

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="background-image: url('123.jpg');">
	<center>
		<div>
			<%
				String userid = (String) session.getAttribute("userid");
				if (null != userid) {
			%>
			<p style="font-size: 35px; font-family: 仿宋; color: purple;">
				<b>欢迎<%=session.getAttribute("userid")%>光临本系统
				</b>
			</p>
		</div>
		<div>
			&nbsp;
			<p>本网站现在仍处于建设阶段，希望以后可以不断完善！</p>
		</div>
		<div>
			<p>感谢你的访问</p>


			<p>制作人：颜庆翔</p>
			<p>
			<div id="time">
				<script>
					document.getElementById('time').innerHTML = new Date()
							.toLocaleString()
							+ ' 星期' + '日一二三四五六'.charAt(new Date().getDay());
					setInterval(
							"document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
							1000);
				</script>
			</div>
			</p>

			<a href="loginOut.jsp" style="color: purple;">注销</a>
		</div>
		<%
			} else {
		%>
		<p>
			请先进行系统的<a href="login.jsp"></a>登陆
		</p>
		<%
			}
		%>
	</center>
</body>
</html>