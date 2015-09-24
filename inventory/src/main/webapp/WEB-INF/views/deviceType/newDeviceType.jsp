<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page session="false" %>
<html>
<head>
	<title>New DeviceType</title>
</head>
<body>
<h1>New DeviceType</h1>

<s:url value="/devicetypes/created" var="saveOkURL" />

<sf:form method="post" action="${saveOkURL}" modelAttribute="deviceType" >
	<div><sf:label path="name">Name</sf:label></div>
	<div><sf:input path="name" /></div>
	<div><input type="submit" value="New Product Type" /></div>
</sf:form>
</body>
</html>