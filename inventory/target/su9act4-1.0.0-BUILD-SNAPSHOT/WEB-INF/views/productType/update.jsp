<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page session="false" %>
<html>
<head>
	<title>Update</title>
</head>
<body>
<h1>
	Update Product Type
</h1>
<s:url value="/producttypes/saveupdate" var="okupdateURL" />
<sf:form method="post" action="${okupdateURL}" modelAttribute="productType" >
	<sf:hidden path="id" />
	<div><sf:label path="name">Name</sf:label></div>
	<div><sf:input path="name" /></div>
	<div><input type="submit" value="Change Product Type" /></div>
</sf:form>
<div>
	<a href="<c:url value="/producttypes" />">Return to Product Types</a> 
</div>  
</body>
</html>
