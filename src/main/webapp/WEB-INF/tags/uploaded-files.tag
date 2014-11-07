<%@ tag language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="m" uri="map"%>

<m:map map="${map}" data="data">
	<img src="${data.value}" title="${data.key}" alt="${data.key}"><br>
</m:map>