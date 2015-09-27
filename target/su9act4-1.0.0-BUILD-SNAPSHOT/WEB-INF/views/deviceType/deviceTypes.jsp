<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page session="false" %>
<html>
<head>
	<title>DeviceType</title>
</head>
<body>
<h1>
	See all DeviceType
</h1>
<a href="<c:url value="/devicetypes/new" />">New Device Type</a>
<ul>
<h3>Search</h3>
<s:url value="/devicetypes/search" var="searchUrl" />
<sf:form method="post" action="${searchUrl}" modelAttribute="emptyDeviceType" >
	<div><sf:label path="name">Name</sf:label></div>
	<div><sf:input path="name" /></div>
	<div><input type="submit" value="Search" /></div>
</sf:form>
<h3>Show paginated</h3>
<s:url value="/devicetypes/paginated" var="paginatedUrl" />
<sf:form method="post" action="${paginatedUrl}" modelAttribute="paginationFormCriteria" >
	<div><sf:label path="number">Number of records</sf:label></div>
	<div><sf:input path="number" /></div>
	<div><sf:label path="isAscending">ASC/DESC</sf:label></div>
	<div><sf:checkbox path="isAscending" /></div>
	<div><input type="submit" value="Search" /></div>
</sf:form>
<c:forEach items="${deviceTypes}" var="deviceType">
	<li>
		<strong>${deviceType.name}:</strong>
		
		<!-- Link to detail with parameter, spring taglib style -->
		<s:url value="/devicetypes/detail/{id}" var="deviceTypeDetail">
   			<s:param name="id" value="${deviceType.id}" />
 		</s:url>
		<a href="${deviceTypeDetail}">Detail</a>

		<!-- Links tod delete parameter, spring taglib style -->
		<s:url value="/devicetypes/delete/{id}" var="deviceTypeDelete">
   			<s:param name="id" value="${deviceType.id}" />
 		</s:url>
		<a href="${deviceTypeDelete}">Delete</a>
		<!-- Links tod delete parameter, spring taglib style -->
		<s:url value="/devicetypes/update/{id}" var="deviceTypeUpdate">
   			<s:param name="id" value="${deviceType.id}" />
 		</s:url>
		<a href="${deviceTypeUpdate}">Update</a>
		
	</li>
</c:forEach>
</ul>
<div>
	<a href="<c:url value="/" />">Home</a>
</div>
</body>
</html>
