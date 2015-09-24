<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page session="false" %>
<html>
<head>
	<title>DeviceType Detail: ${deviceType.id}</title>
</head>
<body>
<h1>
	Detail for ${deviceType.name}
</h1>

<div>
<ul>
<li><strong>Id:</strong>${deviceType.id}</li>
<li><strong>Name:</strong>${deviceType.name}</li>
</ul>
<strong>Products</strong>
<c:forEach items="${deviceType.devices}" var="deviceType">
		<div>
			<ul>
				<li>
					${product.id} - ${product.name} - ${product.description} | 

					<!-- Links tod delete parameter, spring taglib style -->
					<s:url value="/devicetpyes/detail/{id}" var="deviceTypeDetail">
   						<s:param name="id" value="${deviceType.id}" />
 					</s:url>
 					<a href="${deviceTypeDetail}">Detail</a>  |
 					
					<!-- Links tod delete parameter, spring taglib style -->
					<s:url value="/devicetpyes/delete/{id}" var="deviceTypeDelete">
   						<s:param name="id" value="${deviceType.id}" />
 					</s:url>
					<a href="${deviceTypeDelete}">Delete</a>  |

					<s:url value="/devicetpyes/update/{id}" var="deviceTypeUpdate">
   						<s:param name="id" value="${deviceType.id}" />
 					</s:url>
 					<a href="${deviceTypeUpdate}">Update</a>
				</li>
			</ul>
		</div>
</c:forEach>
<s:url value="/devicetpyes/created" var="createproductURL" />
<sf:form method="post" action="${createproductURL}" modelAttribute="deviceType" >
	<sf:hidden path="deviceType.id"/>
	<div><sf:label path="name">Name</sf:label></div>
	<div><sf:input path="name" /></div>
	<div><sf:label path="description">Description</sf:label></div>
	<div><sf:input path="description" /></div>
	<div><input type="submit" value="Create Product" /></div>
</sf:form>
</div>

<div>
	<a href="<c:url value="/devicetypes" />">Return to Product Types</a> 
</div>  
</body>
</html>
