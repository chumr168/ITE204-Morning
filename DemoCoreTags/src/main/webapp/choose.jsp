<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
                    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Choose</title>
</head>
<body>


<c:set var="grade" value="50" />

<c:choose>
	<c:when test="${grade > 90} }"> Grade A</c:when>
	<c:when test="${grade > 70 }"> Grade B</c:when>
	<c:when test="${grade >60 }"> Grade C</c:when>
	<c:when test="${grade > 50 }"> Grade D</c:when>
	<c:otherwise>Fail</c:otherwise>
</c:choose>


</body>
</html>