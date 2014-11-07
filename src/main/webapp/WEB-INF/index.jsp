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
	
	<form action="login" method="post">
		<label for="username">Username</label><br>
		<input type="text" id="username" name="username" title="username"><br>
		<label for="password">Password</label><br>
		<input type="password" id="password" name="password" title="password"><br>
		<input type="submit" value="login" title="login">
	</form>
</body>
</html>
