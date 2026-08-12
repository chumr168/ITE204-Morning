<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Catch Tag</title>
</head>
<body>



<c:catch var="error">

<% 
int x = 2/0; 
%>

</c:catch>

<c:if test="${ not empty error}">
 	<b>Error message: <c:out value="${error.message}" /></b>
</c:if>

</body>
</html>