<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="tags" tagdir="/WEB-INF/tags/" %>
<!DOCTYPE html>
<html>
<head>
	<tags:header title="Index"></tags:header>
</head>
<body>
	<h1>Welcome!</h1>
	<tags:nav></tags:nav>
	<p>This is a webapp, which serves as a gallery. You have to log in to upload new pictures.</p>
	<tags:loginForm>
	</tags:loginForm>
	<tags:logoutForm>
	</tags:logoutForm>
</body>
</html>
