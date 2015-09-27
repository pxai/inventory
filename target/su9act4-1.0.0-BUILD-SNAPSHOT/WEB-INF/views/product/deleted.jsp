<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page session="false" %>
<html>
<head>
	<title>Delete Product</title>
</head>
<body>
<h1>
	Delete Product
</h1>

<p>Product ${deletedId} deleted.</p>
<div>
	<s:url value="/producttypes/detail/{id}" var="backToDetailURL" >
		<s:param name="id" value="${productTypeId}" />
	</s:url>
	
	<a href="${backToDetailURL}">Return to ProductType detail</a>  |
	<a href="<c:url value="/" />">Go back home</a> |
	
</div>  
</body>
</html>
