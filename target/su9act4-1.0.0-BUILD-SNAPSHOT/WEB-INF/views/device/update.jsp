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
	<div><sf:label path="brand">Brand</sf:label></div>
	<div><sf:input path="brand" /></div>
	<div><sf:label path="color">Color</sf:label></div>
	<div><sf:input path="color" /></div>
	<div><sf:label path="deviceStatus">Status</sf:label></div>
	<div><sf:input path="deviceStatus" /></div>
	<div><sf:label path="description">Description</sf:label></div>
	<div><sf:input path="description" /></div>
	<div><sf:label path="motherboard">Motherboard</sf:label></div>
	<div><sf:input path="motherboard" /></div>
	<div><sf:label path="ram">Ram</sf:label></div>
	<div><sf:input path="ram" /></div>
	<div><sf:label path="cpu">Cpu</sf:label></div>
	<div><sf:input path="cpu" /></div>
	<div><sf:label path="hardisk">Hardisk</sf:label></div>
	<div><sf:input path="hardisk" /></div>
	<div><sf:label path="os">Os</sf:label></div>
	<div><sf:input path="os" /></div>
	<div><sf:label path="Flash">Flash</sf:label></div>
	<div><sf:input path="flash" /></div>
	<div><sf:label path="interfaces">Interfaces</sf:label></div>
	<div><sf:input path="interfaces" /></div>
	<div><input type="submit" value="Change Device" /></div>
</sf:form>
<div>

	<a href="<c:url value="/devicetypes" />">Return to Device Types</a> 
</div>  
</body>
</html>
