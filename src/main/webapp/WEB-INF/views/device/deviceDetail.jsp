<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page session="false" %>
<html>
<head>
	<title>Detail for device ${device.id}</title>
</head>
<body>
<h1>
	Detail for ${device.name} device
</h1>

<div>
<ul>
<li><strong>Id:</strong>${device.id}</li>
<li><strong>Name:</strong>${device.name}</li>
<li><strong>Description:</strong>${device.description}</li>
<li><strong>Device type:</strong>${device.deviceType.name}</li>
</ul>
</div>

<div>
	<s:url value="/devicetypes/detail/{id}" var="backToDetailURL" >
		<s:param name="id" value="${device.deviceType.id}" />
	</s:url>
	<a href="${backToDetailURL}">Return to DeviceType detail</a>  |
	<a href="<c:url value="/devicetypes" />">Go back to Device Types</a> |
	<a href="<c:url value="/" />">Homes</a> 
</div>  
</body>
</html>
