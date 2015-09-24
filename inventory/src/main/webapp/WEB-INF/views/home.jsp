<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Home
</h1>

<a href="<c:url value="producttypes" />">See Product Type</a> |  
<a href="<c:url value="about" />">About</a>
</body>
</html>
