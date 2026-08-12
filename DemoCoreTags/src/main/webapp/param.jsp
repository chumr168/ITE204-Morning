<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Param</title>
</head>
<body>
<!-- import.jsp?userId=2002 -->
<c:url var="data" value="import.jsp" >
	<c:param name="userId" value="2002"/>
	<c:param name="gender" value="male" />
	<c:param name="academicYear" value="2026" />
	
</c:url>
<a href="${data }" >Go to my data</a>

</body>
</html>