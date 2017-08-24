<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery-latest.js"></script>
</head>
<body onload="init()" >
	<script type="text/javascript">
		function init() {
			$("#abc").on("click", function() {
				alert("hai")
			});
		}
	</script>
	<button id='abc'>abc</button>
</body>
</html>