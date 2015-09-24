<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page session="false" %>
<html>
<head>
	<title>Device Saved OK</title>
</head>
<body>
<h1>
	New Device was created
</h1>

<div>

	<s:url value="/devicetypes/detail/{id}" var="backToDetailURL" >
		<s:param name="id" value="${idDeviceType}" />
	</s:url>
		<a href="${backToDetailURL}">Return to DeviceType detail</a>  | |
	<a href="<c:url value="/devicetypes/" />">Go back to Device Types</a> |
	<a href="<c:url value="/" />">Return home</a> 
</div>  
</body>
</html>
