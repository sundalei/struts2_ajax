<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="scripts/jquery-1.12.1.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	$("#button1").click(function() {
		$.get("getJsonAction2.action", {name: $("#name").val()}, function(returnedData, status) {
			var people = returnedData;
			
			var id = people.id;
			var name = people.name;
			var age = people.myAge;
			var address = people.address;
			
			var html = "<table width='60%' border='1' align='center'><tr><th>id</th>" + 
			"<th>name</th><th>age</th><th>address</th></tr><tr align='center'>" + 
			"<td>" + id + "</td><td>" + name + "</td><td>" + age + "</td><td>" + address + 
			"</td></tr></table>";
			
			$("#theBody table:eq(0)").remove();
			$("#theBody").append(html);
		} );
	});
});

</script>

</head>

<body id="theBody">
	<select id="name">
		<option value="zhangsan">zhangsan</option>
		<option value="lisi">lisi</option>
	</select>
	<input type="button" value="get json content from server" id="button1">
</body>

</html>