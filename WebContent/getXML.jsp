<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="scripts/jquery-1.12.1.js"></script>
<script type="text/javascript">
var getInfo = function() {
	$.post("getXMLAction.action",
	{
		name:$("#name").val()
	}, function(returnedData, status) {
		alert(returnedData);
	});
}
</script>
</head>
<body>
	<select id="name">
		<option value="zhangsan">zhangsan</option>
		<option value="lisi">lisi</option>
	</select>
	<input type="button" value="get information" onclick="getInfo();">
</body>
</html>