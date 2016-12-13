/**
 * 
 */
/**
 * 
 */


window.onload = initAll;
function initAll() {
	document.getElementsByTagName("form")[0].onsubmit = function() {
		return addNode();
	}
}

function addNode() {
	var inText = document.getElementById("textArea").value;//获取文本框中的元素在intext中；
	var newText = document.createTextNode(inText);//创建一个文本节点，将intext放入
	var newGraf = document.createElement("p");//创建一个<p>元素
	newGraf.appendChild(newText);//将newtext文本放入到<P>段落中的末尾
	var docBody = document.getElementsByTagName("body")[0];//找到body节点，[0]表示第一个body标签
	docBody.appendChild(newGraf);//将之前<p>段落中的内容，放入到上面找到的body里面

	return false; // 此处不可以省略，起到抑制默认行为的作用
}

function delNode() {
	var allGrafs = document.getElementsByTagName("p");//找到这个文件里面的所有的<p>段落元素
	if (allGrafs.length > 1) {
		var lastGraf = allGrafs.item(allGrafs.length - 1)//<p>段落元素中的最后一个元素
		var docBody = document.getElementsByTagName("body")[0]//找到body节点，[0]表示第一个body标签
		docBody.removeChild(lastGraf)//将docbody中的子节点中<p>段落中的最后一个元素移去。
	}
	// return false;
}

function insertBeforeDemo() {        
	var newItem = document.createElement("LI");//document，创造一个新的元素节点<li>;
	var textnode = document.createTextNode("MMM");//创建一个文本节点节点
	newItem.appendChild(textnode)//向元素<li>的尾部添加上面textnode文本

	var list = document.getElementById("List");//获取list节点中的数据
	list.insertBefore(newItem, list.childNodes[2]);//将newitem中的MMM插入到list之前
	return false;
}

function replaceChildDemo() {
	var newItem = document.createElement("LI");
	var textnode = document.createTextNode("YYY");
	newItem.appendChild(textnode)
	
	var list = document.getElementById("List");
	list.replaceChild(newItem, list.childNodes[0]);
	return false;
}
