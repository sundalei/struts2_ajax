<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.opensymphony.xwork2.ActionContext, java.util.*, com.opensymphony.xwork2.util.ValueStack, com.shengsiyuan.action.ognl.OgnlAction" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

username: <s:property value="username" /><br>
password: <s:property value="password" /><br>

-----------------------------------------<br>

username: <s:property value="#parameters.username" /><br>
password: <s:property value="#parameters.password" /><br>

-----------------------------------------<br>

request: <s:property value="#request.hello" /><br>
session: <s:property value="#session.hello" /><br>
application: <s:property value="#application.hello" /><br>
attr: <s:property value="#attr.hello" /><br>

-----------------------------------------<br>

request: <%= ((Map)ActionContext.getContext().get("request")).get("hello") %><br>
session: <%= ActionContext.getContext().getSession().get("hello") %><br>
application: <%= ActionContext.getContext().getApplication().get("hello") %><br>
attr: <%= ((Map)ActionContext.getContext().get("attr")).get("hello") %><br>

-----------------------------------------<br>

person1: address: <s:property value="list[0].address" /><br>
person2: age: <s:property value="list[1].age" /><br>
person1: cat: name: <s:property value="list[0].cat.name" /><br>
person1: size: <s:property value="list.size" /><br>
person1: isEmpty: <s:property value="list.isEmpty" /><br>

-----------------------------------------<br>

person1: address: <%= ((OgnlAction)ActionContext.getContext().getValueStack().peek()).getList().get(0).getAddress() %><br>
person2: age: <%= ((OgnlAction)ActionContext.getContext().getValueStack().peek()).getList().get(1).getAge() %><br>
person1: cat: name: <%= ((OgnlAction)ActionContext.getContext().getValueStack().peek()).getList().get(0).getCat().getName() %><br>
person1: size: <%= ((OgnlAction)ActionContext.getContext().getValueStack().peek()).getList().size() %><br>
person1: isEmpty: <%= ((OgnlAction)ActionContext.getContext().getValueStack().peek()).getList().isEmpty() %><br>

-----------------------------------------<br>

person2: friend: <s:property value="list[1].friends[2]" /><br>
person2: friend: <%= ((OgnlAction)ActionContext.getContext().getValueStack().peek()).getList().get(1).getFriends()[2] %><br>

-----------------------------------------<br>

person2: map2: <s:property value="list[1].map['hello2']" /><br>

-----------------------------------------<br>

filtering: <s:property value="list.{? #this.name.length() > 5}[0].name" /><br>

-----------------------------------------<br>

<s:iterator value="list.{? #this.name.length() > 2}">
	<s:property value="name" /><br>
	<s:property value="cat.color" /><br>
	<s:property value="friends[0]" /><br>
</s:iterator>

-----------------------------------------<br>

projecting: <br>
<s:iterator value="list.{#this.age}">
	<s:property/><br>
</s:iterator>

</body>
</html>