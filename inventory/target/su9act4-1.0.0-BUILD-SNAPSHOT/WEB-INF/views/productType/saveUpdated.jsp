<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Update OK</title>
</head>
<body>
<h1>
	Ok, Product Type was updated
</h1>

<div>

	<a href="<c:url value="/producttypes" />">Go back to Product Types</a> |
	<a href="<c:url value="/" />">Homes</a> 
</div>  
</body>
</html>
