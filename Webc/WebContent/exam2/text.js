function addNode() {
	var inText = document.getElementById("textArea").value;//获取文本框中的元素在intext中；
	var newText = document.createTextNode(inText);//创建一个文本节点，将intext放入
	var newGraf = document.createElement("p");//创建一个<p>元素
	newGraf.appendChild(newText);//将newtext文本放入到<P>段落中的末尾
	var docBody = document.getElementsByTagName("body")[0];//找到body节点，[0]表示第一个body标签
	docBody.appendChild(newGraf);//将之前<p>段落中的内容，放入到上面找到的body里面

	return false; // 此处不可以省略，起到抑制默认行为的作用
}