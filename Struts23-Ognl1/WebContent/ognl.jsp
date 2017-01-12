<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OGNL表达式</title>
</head>
<body>
	<table border="1">
		<caption>
			<strong>访问Struts2de
				命名对象：parameter、request、session、application和attr</strong>
		</caption>
		<tr>
			<th>OGNL表达式></th>
			<th>java代码</th>
			<th>执行结果</th>
		</tr>
		<tr>
			<td>#parameters.greeting</td>
			<td>ActionContext.getContext().getParameters().get("greeting")</td>
			<td><s:property value="#request.personName" /></td>
		</tr>
		<tr>

			<td>#request.personName</td>
			<td>ActionContext.getContext().getContextMap().get("personName")</td>
			<td><s:property value="#parameters.greeting" /></td>
		</tr>
		<tr>
			<td>#session.personName</td>
			<td>ActionContext.getContext().getSession().get("personName")</td>
			<td><s:property value="#session.personName" /></td>
		</tr>
		<tr>
			<td>#application.PersonName</td>
			<td>ActionContext.getContext().get("attr").get("personName")</td>
			<td><s:property value="#attr.personName" /></td>
		</tr>
	</table>
	<p>
	<table border="1">
		<caption>
			<strong>访问列表</strong>
		</caption>
		<tr>
			<th>OGNL表达式</th>
			<th>Java代码</th>
			<th>执行结果</th>
		</tr>
		<tr>
			<td>persons[0].name</td>
			<td>((OgnlAction)ActionContext.getContext().getValueStack().peek()).getPersons().get(0).getName()</td>
			<td><s:property value="persons[0].name" /></td>
		</tr>
		<tr>
			<td>persons[1].address</td>
			<td>((OgnlAction)ActionContext.getContext().getValueStack().peek()).getPersons().get(1).getAddress()</td>
			<td><s:property value="persons[1].address" /></td>
		</tr>
		<tr>
			<td>persons[2].address.city</td>
			<td>((OgnlAction)ActionContext.getContext().getValueStack().peek()).getPersons().get(2).getAddress().getCity()</td>
			<td><s:property value="persons[1].address.city" /></td>
		</tr>
		<tr>
			<td>persons.size</td>
			<td>((OgnlAction)ActionContext.getContext().getValueStack().peek()).getPersons().size()</td>
			<td><s:property value="persons.size" /></td>
		</tr>
		<tr>
			<td>persons.isEmpty</td>
			<td>((OgnlAction)ActionContext.getContext().getValueStack().peek()).getPersons().isEmpty()</td>
			<td><s:property value="persons.isEmpty" /></td>
		</tr>
	</table>
	<p>
	<table border="1">
		<caption>
			<strong>访问数组</strong>
		</caption>
		<tr>
			<th>OGNL表达式</th>
			<th>Java代码</th>
			<th>执行结果</th>
		</tr>
		<tr>
			<td>persons[0].aliases[0]</td>
			<td>((OgnlAction)ActionContext.getContext().getValueStack().peek()).getPersons().get(0).getAliases()[0]</td>
			<td><s:property value="persons[0].aliases[0]" /></td>
		</tr>
		<tr>
			<td>persons[1].aliases[0]</td>
			<td>((OgnlAction)ActionContext.getContext().getValueStack().peek()).getPersons().get(1).getAliases()[1]</td>
			<td><s:property value="persons[1].aliases[0]" /></td>
		</tr>
		<tr>
			<td>persons[2].aliases[0]</td>
			<td>((OgnlAction)ActionContext.getContext().getValueStack().peek()).getPersons().get(2).getAliases()[1]</td>
			<td><s:property value="persons[2].aliases[0]" /></td>
		</tr>
	</table>
	<p>
	<table border="1">
		<caption>
			<strong>访问Map</strong>
		</caption>
		<tr>
			<th>OGNL表达式</th>
			<th>Java代码</th>
			<th>执行结果</th>
		</tr>
		<tr>
			<td>persons[0].phones['home']</td>
			<td>((OgnlAction)ActionContext.getContext().getValueStack().peek()).getPersons().get(0).getPhones().get("home")</td>
			<td><s:property value="persons[0].phones['home']" /></td>
		</tr>
		<tr>
			<td>persons[1].phones.office</td>
			<td>((OgnlAction)ActionContext.getContext().getValueStack().peek()).getPersons().get(1).getPhones().get("office")</td>
			<td><s:property value="persons[1].phones.office" /></td>
		</tr>
		<tr>
			<td>persons[2].phones.size</td>
			<td>((OgnlAction)ActionContext.getContext().getValueStack().peek()).getPersons().get(1).getPhones().size()</td>
			<td><s:property value="persons[2].phones.size" /></td>
		</tr>
		<tr>
			<td>persons[2].phones.isEmpty</td>
			<td>((OgnlAction)ActionContext.getContext().getValueStack().peek()).getPersons().get(1).getPhones().isEmpty()</td>
			<td><s:property value="persons[2].phones.isEmpty" /></td>
		</tr>
	</table>
	<p />
	<h3>选择和投影</h3>
	<p>选择示例：persons.{?#this.salary &gt; 4000}</p>
	<ul>
		<s:iterator value="persons.{?#this.salary >4000}">
			<!-- iterator标签迭代集合中的元素，并将property标签访问就是迭代对象的属性 -->
			<li><s:iterator value="name" />薪水是<s:property value="salary" /></li>
		</s:iterator>
	</ul>
	<p>投影实例：persons.{name}</p>
	<ul>
		<s:iterator value="persons.{getAge()}">
			<li><s:property /></li>
		</s:iterator>
	</ul>
</body>
</html>