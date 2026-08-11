<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demmo Tag</title>
</head>
<body>

<!-- jstl tag -->
<c:set var="firstName" value="Virak Chey" scope="session"/>
<b>Your first name: ${firstName}</b><br>

<c:out value="${firstName}" escapeXml="true"/>

<c:remove var="firstName" scope="session" />
</body>
</html>