<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page session="false" %>
<html>
<head>
	<title>Delete Device</title>
</head>
<body>
<h1>
	Delete Device
</h1>

<p>Device ${deletedId} deleted.</p>
<div>
	<s:url value="/devicetypes/detail/{id}" var="backToDetailURL" >
		<s:param name="id" value="${deviceTypeId}" />
	</s:url>
	
	<a href="${backToDetailURL}">Return to DeviceType detail</a>  |
	<a href="<c:url value="/" />">Go back home</a> |
	
</div>  
</body>
</html>
