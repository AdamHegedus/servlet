<%@ tag language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="m" uri="map"%>

<div id="lightbox">
<m:map map="${map}" data="data">
	
	<ul>
		<li>
			<img src="${data.value}" title="${data.key}" alt="${data.key}" data-large="${data.value}">		
			<div class="image_title">
				<h5 class="title">${data.key}</h5>
			</div>
		</li>
	</ul>
	

</m:map>
	</div>