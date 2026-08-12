<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach</title>
</head>
<body>

<c:forEach var="i" begin="1" step="1" end="10" varStatus="status">
	<b>${i} current is ${status.current}</b><br>
	<b>${i} index ${status.index}</b><br>
	
	<b>${i} is this first item? ${status.first}</b><br>
	<b>${i} is this last item? ${status.last}</b><br>
	<b>${i} step: ${status.step}</b><br>
	
</c:forEach>

<%
//scriptlets
for(int a=1; a<10; a++){
	%>
	<b><%= a %></b><br>
	<%
}
%>
</body>
</html>