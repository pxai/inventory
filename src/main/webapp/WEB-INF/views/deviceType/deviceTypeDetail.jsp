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
<strong>Devices</strong>
<c:forEach items="${deviceType.devices}" var="device">
		<div>
			<ul>
				<li>
					${device.id} - ${device.name} - ${device.description} | 

					<!-- Links tod delete parameter, spring taglib style -->
					<s:url value="/devices/detail/{id}" var="deviceDetail">
   						<s:param name="id" value="${device.id}" />
 					</s:url>
 					<a href="${deviceDetail}">Detail</a>  |
 					
					<!-- Links tod delete parameter, spring taglib style -->
					<s:url value="/devices/delete/{id}" var="deviceDelete">
   						<s:param name="id" value="${device.id}" />
 					</s:url>
					<a href="${deviceDelete}">Delete</a>  |

					<s:url value="/devices/update/{id}" var="deviceUpdate">
   						<s:param name="id" value="${device.id}" />
 					</s:url>
 					<a href="${deviceUpdate}">Update</a>
				</li>
			</ul>
		</div>
</c:forEach>
<s:url value="/devices/created" var="createdeviceURL" />
<sf:form method="post" action="${createdeviceURL}" modelAttribute="device" >
	<sf:hidden path="deviceType.id"/>
	<div><sf:label path="name">Name</sf:label></div>
	<div><sf:input path="name" /></div>
	<div><sf:label path="brand">Brand</sf:label></div>
	<div><sf:input path="brand" /></div>
	<div><sf:label path="color">Color</sf:label></div>
	<div><sf:input path="color" /></div>
	<div><sf:label path="deviceStatus.id">Status</sf:label></div>
	<div><sf:input path="deviceStatus.id" /></div>
	<div><sf:label path="description">Description</sf:label></div>
	<div><sf:input path="description" /></div>
	<div><sf:label path="motherboard">Motherboard</sf:label></div>
	<div><sf:input path="motherboard" /></div>
	<div><sf:label path="ram">Ram</sf:label></div>
	<div><sf:input path="ram" /></div>
	<div><sf:label path="cpu">Cpu</sf:label></div>
	<div><sf:input path="cpu" /></div>
	<div><sf:label path="hardisk">Hardisk</sf:label></div>
	<div><sf:input path="hardisk" /></div>
	<div><sf:label path="os">Os</sf:label></div>
	<div><sf:input path="os" /></div>
	<div><sf:label path="Flash">Flash</sf:label></div>
	<div><sf:input path="flash" /></div>
	<div><sf:label path="interfaces">Interfaces</sf:label></div>
	<div><sf:input path="interfaces" /></div>
	<div><input type="submit" value="Create Device" /></div>
</sf:form>
</div>

<div>
	<a href="<c:url value="/devicetypes" />">Return to Device Types</a> 
</div>  
</body>
</html>
