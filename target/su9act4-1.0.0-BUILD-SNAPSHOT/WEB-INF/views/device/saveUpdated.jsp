<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page session="false" %>
<html>
<head>
	<title>Device Update OK</title>
</head>
<body>
<h1>
	Ok, Device was updated
</h1>

<div>
	<s:url value="/devicetypes/detail/{id}" var="backToDetailURL" >
		<s:param name="id" value="${deviceTypeId}" />
	</s:url>
	<a href="${backToDetailURL}">Return to DeviceType detail</a>  |
	<a href="<c:url value="/devicetypes" />">Go back to Device Types</a> |
	<a href="<c:url value="/" />">Homes</a> 
</div>  
</body>
</html>
