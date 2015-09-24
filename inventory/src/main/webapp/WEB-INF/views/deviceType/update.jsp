<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page session="false" %>
<html>
<head>
	<title>Update Device Types</title>
</head>
<body>
<h1>
	Update Device Types
</h1>
<s:url value="/devicetypes/saveupdate" var="okupdateURL" />
<sf:form method="post" action="${okupdateURL}" modelAttribute="deviceType" >
	<sf:hidden path="id" />
	<div><sf:label path="name">Name</sf:label></div>
	<div><sf:input path="name" /></div>
	<div><input type="submit" value="Change Device Type" /></div>
</sf:form>
<div>
	<a href="<c:url value="devicetypes" />">Return to Device Types</a> 
</div>  
</body>
</html>
