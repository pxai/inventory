<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page session="false" %>
<html>
<head>
	<title>Product Update OK</title>
</head>
<body>
<h1>
	Ok, Product was updated
</h1>

<div>
	<s:url value="/producttypes/detail/{id}" var="backToDetailURL" >
		<s:param name="id" value="${productTypeId}" />
	</s:url>
	<a href="${backToDetailURL}">Return to ProductType detail</a>  |
	<a href="<c:url value="/producttypes" />">Go back to Product Types</a> |
	<a href="<c:url value="/" />">Homes</a> 
</div>  
</body>
</html>
