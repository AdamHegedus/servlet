<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="tags" tagdir="/WEB-INF/tags/" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Welcome</title>
</head>
<body>
	<h1>Welcome</h1>
	
	<form action="logout" method="post">
		<input type="submit" value="logout" title="logout">
	</form>
	
	<tags:uploaded-files>
	</tags:uploaded-files>
</body>
</html>
