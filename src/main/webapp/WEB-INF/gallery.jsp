<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="tags" tagdir="/WEB-INF/tags/" %>
<!DOCTYPE html>
<html>
<head>
	<tags:header title="Gallery"></tags:header>
</head>
<body>
	<h1>Gallery</h1>
	<tags:nav></tags:nav>
	
	<h2>Upload new:</h2>
	<tags:uploadForm></tags:uploadForm>
	
	<hr>
	<h2>Uploaded Files:</h2>
	<tags:uploaded-files></tags:uploaded-files>
	
	<script src="http://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script src="js/lightbox.js"></script>
</body>
</html>
