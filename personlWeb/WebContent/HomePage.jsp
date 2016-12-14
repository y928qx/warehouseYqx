<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	window.onload=function(){
		var clock=document.getElementsByClassName("clock")[0];
		draw();
		var time=new Date();
		var h=drawpointer(8,100,"#000",time.getHours()*30+time.getMinutes()*6/12);
		var m=drawpointer(6,180,"#000",time.getMinutes()*6);
		var s=drawpointer(4,260,"red",time.getSeconds()*6);
		setInterval(function(){
			var time=new Date();
			h.style.transform="rotate("+(time.getHours()*30+time.getMinutes()*6/12)+"deg)";
			m.style.transform="rotate("+time.getMinutes()*6+"deg)";
			s.style.transform="rotate("+time.getSeconds()*6+"deg)"
		},1000);
		function draw(){
			for(var i=0;i<60;i++){
				var newdiv=document.createElement("div");
				var m,h;
				if(i%5==0){
					m=8;
					h=25;
				}else{
					m=6;
					h=15;
				}
				newdiv.style.cssText="width:"+m+"px;height:"+h+"px;background:#000;position:absolute;left:0;top:0;transform:translate("+(600-m)/2+"px,0) rotate("+i*6+"deg);transform-origin:"+m/2+"px 300px"
				clock.appendChild(newdiv);
			}
		}


		function drawpointer(w,h,b,d){
			var newdiv=document.createElement("div");
//                中间的圆
			var newd=document.createElement("div");
			newd.style.cssText="width:50px;height:50px;border-radius:50%;background: radial-gradient(circle at 50% 50%,rebeccapurple,royalblue);position:absolute;left:"+(600-50)/2+"px;top:"+(600-50)/2+"px;"
			newdiv.style.cssText="width:"+w+"px;height:"+h+"px;position:absolute;left:"+(600-w)/2+"px;top:"+(300-h)+"px;background:"+b+";transform:rotate("+d+"deg);transform-origin:center bottom;";
			clock.appendChild(newdiv);
			clock.appendChild(newd);
			return newdiv;
		}
	}
</script>
<style>
	body{
		background: radial-gradient(circle at 50% 50%,#ccc,rebeccapurple);
	}
	.clock{
		width: 600px;
		height: 600px;
		/*background: radial-gradient(circle at 50% 50%,rebeccapurple,royalblue);*/
		position: absolute;
		left: 0;
		right: 0;
		top: 0;
		bottom: 0;
		margin: auto;
		border-radius: 50%;
	}
</style>






<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
p {
	font-family: 仿宋;
	font-size: 45px;
	color: purple;
}

span {
	font-family: 隶书;
	font-size: 30px;
	color: white;
}

#denglu {
	color: red;
	font-weight: bold;
	font-size: 40px;
}
</style>

</head>
<body
	style="background-image: url('http://img.61gequ.com/allimg/2013-01/1-130106094125.jpg'); text-align: center;">
	<p>这是一个网站</p>
	<a href="login.jsp" id="denglu">登录页面</a>
	<br />
	<span>用户名：yqx &nbsp;</span> &nbsp;
	<span>密码：123456</span>
	
	
	<div class="clock"></div>

<div style="text-align:center;margin:5px 0; font:normal 14px/24px 'MicroSoft YaHei';">


	
	
</body>
</html>