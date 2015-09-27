<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page session="false" %>
<html>
<head>
	<title>DeviceType Save OK</title>
</head>
<body>
<h1>
	New Device Type was created
</h1>

<div>

	<a href="<c:url value="/devicetypes" />">See Device Type</a> | 
	<a href="<c:url value="/" />">Return home</a> 
</div>  
</body>
</html>
