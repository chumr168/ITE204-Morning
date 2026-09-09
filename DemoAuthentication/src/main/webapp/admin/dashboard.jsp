<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
</head>
<body style="font-family: sans-serif; margin: 50px; background-color: #f9f9f9;">
    <h1 style="color: green;">Welcome to ADMIN Dashboard!</h1>
    <p>Hello <strong>${sessionScope.user}</strong></p>
    <p>Your role: <strong>${sessionScope.role}</strong></p>
    <hr>
    <a href="<%= request.getContextPath() %>/logout" style="color: red; font-weight: bold; text-decoration: none; border: 1px solid red; padding: 5px 10px;">
        Log Out
    </a>
    <p>This page is protected by AuthenticationFilter</p>
</body>
</html>