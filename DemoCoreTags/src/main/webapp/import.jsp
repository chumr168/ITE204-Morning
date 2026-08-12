<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Import Tag</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>

<c:import url="header.jsp" />
<% 
String userId = request.getParameter("userId");
String gender = request.getParameter("gender");
String academicYear = request.getParameter("academicYear");
%>
<c:set var="user" value="<%= userId %>" /> <!-- cannot use this -->
<h1>
${user}</h1>
<h1><%= gender %></h1>
<h1><%= academicYear %></h1>
</body>
</html>