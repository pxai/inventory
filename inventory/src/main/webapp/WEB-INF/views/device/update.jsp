<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page session="false" %>
<html>
<head>
	<title>Update product</title>
</head>
<body>
<h1>
	Update Product
</h1>
<s:url value="/products/saveupdate" var="okupdateURL" />
<sf:form method="post" action="${okupdateURL}" modelAttribute="product" >
	<sf:hidden path="id" />
	<sf:hidden path="productType.id" />
	<div><sf:label path="name">Name</sf:label></div>
	<div><sf:input path="name" /></div>
	<div><sf:label path="description">Description</sf:label></div>
	<div><sf:input path="description" /></div>
	<div><input type="submit" value="Change Product" /></div>
</sf:form>
<div>

	<a href="<c:url value="/producttypes" />">Return to Product Types</a> 
</div>  
</body>
</html>
