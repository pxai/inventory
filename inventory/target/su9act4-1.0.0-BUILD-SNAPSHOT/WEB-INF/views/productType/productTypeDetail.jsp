<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page session="false" %>
<html>
<head>
	<title>Product Type Detail: ${productType.id}</title>
</head>
<body>
<h1>
	Detail for ${productType.name}
</h1>

<div>
<ul>
<li><strong>Id:</strong>${productType.id}</li>
<li><strong>Name:</strong>${productType.name}</li>
</ul>
<strong>Products</strong>
<c:forEach items="${productType.products}" var="product">
		<div>
			<ul>
				<li>
					${product.id} - ${product.name} - ${product.description} | 

					<!-- Links tod delete parameter, spring taglib style -->
					<s:url value="/products/detail/{id}" var="productDetail">
   						<s:param name="id" value="${product.id}" />
 					</s:url>
 					<a href="${productDetail}">Detail</a>  |
 					
					<!-- Links tod delete parameter, spring taglib style -->
					<s:url value="/products/delete/{id}" var="productDelete">
   						<s:param name="id" value="${product.id}" />
 					</s:url>
					<a href="${productDelete}">Delete</a>  |

					<s:url value="/products/update/{id}" var="productUpdate">
   						<s:param name="id" value="${product.id}" />
 					</s:url>
 					<a href="${productUpdate}">Update</a>
				</li>
			</ul>
		</div>
</c:forEach>
<s:url value="/products/created" var="createproductURL" />
<sf:form method="post" action="${createproductURL}" modelAttribute="product" >
	<sf:hidden path="productType.id"/>
	<div><sf:label path="name">Name</sf:label></div>
	<div><sf:input path="name" /></div>
	<div><sf:label path="description">Description</sf:label></div>
	<div><sf:input path="description" /></div>
	<div><input type="submit" value="Create Product" /></div>
</sf:form>
</div>

<div>
	<a href="<c:url value="/producttypes" />">Return to Product Types</a> 
</div>  
</body>
</html>
