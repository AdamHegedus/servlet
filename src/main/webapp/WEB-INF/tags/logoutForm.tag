<%@ tag language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${loginStatus}">
	<h2>Welcome, ${username}!</h2>
	<form action="logout" method="post" class="login">
		<input type="submit" value="Logout">
	</form>
</c:if>
