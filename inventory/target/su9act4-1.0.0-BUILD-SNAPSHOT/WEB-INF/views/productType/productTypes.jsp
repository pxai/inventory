<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page session="false" %>
<html>
<head>
	<title>Product Types</title>
</head>
<body>
<h1>
	See all product types
</h1>
<a href="<c:url value="/producttypes/new" />">New Product Type</a>
<ul>
<h3>Search</h3>
<s:url value="/producttypes/search" var="searchUrl" />
<sf:form method="post" action="${searchUrl}" modelAttribute="emptyProductType" >
	<div><sf:label path="name">Name</sf:label></div>
	<div><sf:input path="name" /></div>
	<div><input type="submit" value="Search" /></div>
</sf:form>
<h3>Show paginated</h3>
<s:url value="/producttypes/paginated" var="paginatedUrl" />
<sf:form method="post" action="${paginatedUrl}" modelAttribute="paginationFormCriteria" >
	<div><sf:label path="number">Number of records</sf:label></div>
	<div><sf:input path="number" /></div>
	<div><sf:label path="isAscending">ASC/DESC</sf:label></div>
	<div><sf:checkbox path="isAscending" /></div>
	<div><input type="submit" value="Search" /></div>
</sf:form>
<c:forEach items="${productTypes}" var="productType">
	<li>
		<strong>${productType.name}:</strong>
		
		<!-- Link to detail with parameter, spring taglib style -->
		<s:url value="/producttypes/detail/{id}" var="productTypeDetail">
   			<s:param name="id" value="${productType.id}" />
 		</s:url>
		<a href="${productTypeDetail}">Detail</a>

		<!-- Links tod delete parameter, spring taglib style -->
		<s:url value="/producttypes/delete/{id}" var="productTypeDelete">
   			<s:param name="id" value="${productType.id}" />
 		</s:url>
		<a href="${productTypeDelete}">Delete</a>
		<!-- Links tod delete parameter, spring taglib style -->
		<s:url value="/producttypes/update/{id}" var="productTypeUpdate">
   			<s:param name="id" value="${productType.id}" />
 		</s:url>
		<a href="${productTypeUpdate}">Update</a>
		
	</li>
</c:forEach>
</ul>
<div>
	<a href="<c:url value="/" />">Home</a>
</div>
</body>
</html>
