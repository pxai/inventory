<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page session="false" %>
<html>
<head>
	<title>Update device</title>
</head>
<body>
<h1>
	Update Device
</h1>
<s:url value="/devices/saveupdate" var="okupdateURL" />
<sf:form method="post" action="${okupdateURL}" modelAttribute="device" >
	<sf:hidden path="id" />
	<sf:hidden path="deviceType.id" />
	<div><sf:label path="name">Name</sf:label></div>
	<div><sf:input path="name" /></div>
	<div><sf:label path="description">Description</sf:label></div>
	<div><sf:input path="description" /></div>
	<div><input type="submit" value="Change Device" /></div>
</sf:form>
<div>

	<a href="<c:url value="/devicetypes" />">Return to Device Types</a> 
</div>  
</body>
</html>
