<%@ tag language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="m" uri="map"%>

<m:map map="${map}" data="data">
	<div id="lightbox">
	<ul>
		<li>
			<img src="${data.value}" title="${data.key}" alt="${data.key}"><br>		
			<div class="image_title">
				<h5 class="title">${data.key}</h5>
			</div>
		</li>
	</ul>
	
	</div>
</m:map>