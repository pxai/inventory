<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page session="false" %>
<html>
<head>
	<title>Detail for product ${product.id}</title>
</head>
<body>
<h1>
	Detail for ${product.name} product
</h1>

<div>
<ul>
<li><strong>Id:</strong>${product.id}</li>
<li><strong>Name:</strong>${product.name}</li>
<li><strong>Description:</strong>${product.description}</li>
<li><strong>Product type:</strong>${product.productType.name}</li>
</ul>
</div>

<div>
	<s:url value="/producttypes/detail/{id}" var="backToDetailURL" >
		<s:param name="id" value="${product.productType.id}" />
	</s:url>
	<a href="${backToDetailURL}">Return to ProductType detail</a>  |
	<a href="<c:url value="/producttypes" />">Go back to Product Types</a> |
	<a href="<c:url value="/" />">Homes</a> 
</div>  
</body>
</html>
