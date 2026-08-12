<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html>
<head>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        p {
            margin: 10px 0;
            font-size: 18px;
        }
        strong {
            font-weight: bold;
            color: #007bff;
        }
    </style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <%-- Assuming myDate is a java.util.Date object --%>
   
    
    
    <c:set var="today" value="<%=new java.util.Date()%>" />
    <div class="container">
        <p>Time: <strong><fmt:formatDate type="time" value="${today}" /></strong></p>
        <p>Date: <strong><fmt:formatDate type="date" value="${today}" /></strong></p>
        <p>Date and Time: <strong><fmt:formatDate type="both" value="${today}" /></strong></p>
        <p>Date and Time Short: <strong><fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${today}" /></strong></p>
        <p>Date and Time Medium: <strong><fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${today}" /></strong></p>
        <p>Date and Time Long: <strong><fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${today}" /></strong></p>
        <p>Date (yyyy-MM-dd): <strong><fmt:formatDate pattern="EEEE-dd-MMMM-yyyy" value="${today}" /></strong></p>
    </div>
    
    <%-- Assuming myDate is a java.util.Date object --%>
    <fmt:formatDate type="time" value="${today}" var="currentTime" />
    <p align="center">Current Time: ${currentTime}</p>
</body>
</html>