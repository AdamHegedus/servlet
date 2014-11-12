<%@ tag language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	
<c:if test="${loginStatus}">
	<form action="upload" method="post" enctype="multipart/form-data">
		<input type="file" name="file" id="file" title="Select file to upload">
		<input type="submit" value="Upload">
	</form>
</c:if>

<c:if test="${!loginStatus}">
	<p>Please, log in to upload new files!</p>
</c:if>