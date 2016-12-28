<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<a
	href="http://www.so.com/s?ie=utf-8&amp;q=%E5%AE%89%E5%BE%BD%E5%90%88%E8%82%A5%E5%A4%A9%E6%B0%94%E9%A2%84%E6%8A%A5&amp;src=hao_weather"
	target="weather101220101" class="today theme-border gclearfix "> <span
	style="background: url(https://p1.ssl.qhimg.com/d/_hao360/weather/1.png) no-repeat; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://p1.ssl.qhimg.com/d/_hao360/weather/1.png', sizingMethod='image')"
	class="pic"></span> <span class="desc">今 多云</span> <span
	class="temperature" lang="en-US">-1°C</span>
</a>

<style type="text/css">
.di {
	color: red;
}

#time {
	color: white;
}

#history {
	color: red;
}
.zhuxiao{
text-align: center;
color: purple;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>你已经成功登录，感谢来访</title>
</head>
<body style="background-image: url('img/homepage.jpg');background-repeat: no-repeat;">

	<div>
		<!--  float=left可以更改div的位置 -->
		<img alt="wu" src="img/HF.jpg">
		<p>今日天气</p>
	</div>
	<div class="di">
		<%
			String userid = (String) session.getAttribute("userid");
		%>
		<center>
			<p style="font-size: 35px; font-family: 仿宋; color: purple;">
				<b>欢迎 <%=session.getAttribute("userid")%>光临本系统
				</b>
			</p>
		</center>
		<marquee>
			<p style="color: white;">制作人：颜庆翔</p>
		</marquee>
		<span>当前在线用户为：</span>

		<%
			//从application中取出所有用户的保存列表。
			Set all = (Set) this.getServletContext().getAttribute("online");

			Iterator iter = all.iterator();
			while (iter.hasNext()) {
		%>
		<%=iter.next()%>

		<%
			}
		%>
		<br /> <span>当前在线人数为 ：</span>
		<%=all.size()%><br />
		<%
			String ld = request.getLocalAddr();
		%>
		<%
			String ld1 = request.getRemoteAddr();
		%>
		<span>服务器id为 ：</span><%=ld%><br /> <span>本机id为 ：</span><%=ld1%>
		&nbsp;
		<p>感谢你的访问</p>
	</div>
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

	<div>
		<a href="http://www.todayonhistory.com/" style="color: green;"><center>
				历史上的今天</center></a>
	</div>

	<a href="loginOut.jsp" class="zhuxiao" >注销 </a>
</body>
</html>