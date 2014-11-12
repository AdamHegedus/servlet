<%@ tag language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${!loginStatus}">
	<h2>Login:</h2>
	<form action="login" method="post" class="login">
		<label for="username">Username</label>
		<input type="text" title="Username" name="username"><br>
		<label for="password">Password</label>
		<input type="password" title="Password" name="password"><br>
		<input type="submit" value="Login">
	</form>
</c:if>
