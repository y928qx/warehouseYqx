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



<script type="text/javascript"> 

function addNode() {
	var inText = document.getElementById("textArea").value;//获取文本框中的元素在intext中；
	var newText = document.createTextNode(inText);//创建一个文本节点，将intext放入
	var newGraf = document.createElement("p");//创建一个<p>元素
	newGraf.appendChild(newText);//将newtext文本放入到<P>段落中的末尾
	var docBody = document.getElementsByTagName("body")[0];//找到body节点，[0]表示第一个body标签
	docBody.appendChild(newGraf);//将之前<p>段落中的内容，放入到上面找到的body里面

	return false; // 此处不可以省略，起到抑制默认行为的作用
}
</script>

</head>
<body>
<h1>学生信息添加</h1>

 <form action="<%=request.getContextPath()%>/Text"
			method="post">
	<div>
				<tr>
					<td >姓名:</td><input type="text" width="100%" height="100%" id="textArea" name="uname" >&nbsp;
				
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