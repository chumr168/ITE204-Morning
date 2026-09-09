<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to our system</title>
</head>
<body style="font-family: sans-serif; margin: 50px;">
    <h2>Login to System</h2>
    
    <% if(request.getParameter("error") != null) { %>
        <p style="color:red; font-weight:bold;">${param.error}</p>
    <% } %>
    
    <% if(request.getParameter("msg") != null) { %>
        <p style="color:red; font-weight:bold;">${param.msg}</p>
    <% } %>

    <form action="login" method="POST">
        Username: <input type="text" name="username" required> <br><br>
        Password: <input type="password" name="password" required> <br><br>
        <button type="submit">Login</button>
    </form>
</body>
</html>