<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="http://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加成绩内容</title>
<style type="text/css">
td{
text-align: center;
width: 40px;"
}
h1{
text-align: center;
color: purple;
}
</style>
<script type="text/javascript" src="text.js"></script>
</head>
<body>
<h1>学生信息添加</h1>

 <form action="<%=request.getContextPath()%>/Text"
			method="post">
	<div>
				<tr>
					<td >姓名:</td><input type="text" width="100%" height="100%" name="uname" >&nbsp;
				
					<td >班级:</td><input type="text" width="100%" height="100%" name="uclass">&nbsp;
					<td >课程:</td><input type="text" width="100%" height="100%" name="ucourse">&nbsp;
					<td >分数:</td><input type="text" width="100%" height="100%" name="ucore">&nbsp;<br/>
				</tr>
				<hr/>
			
		
	</div>
	<input type="submit" name="添加" >
	</form>
</body>
</html>