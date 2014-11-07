<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="tags" tagdir="/WEB-INF/tags/" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<title>Gallery</title>
</head>
<body>
	<h1>Gallery</h1>
		
	<tags:uploaded-files>
	</tags:uploaded-files>
	<!-- PrefixFree -->
<script src="http://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="js/lightbox.js"></script>
</body>
</html>
