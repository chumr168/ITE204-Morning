<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register successfully</title>
</head>
<body>


<h2>Registration Result</h2>

<jsp:useBean id="user" class="com.example.JavaBeans" scope="request" />

	<jsp:setProperty property="*" name="user"/>
<p>
	<strong>Your ID:</strong>
	<jsp:getProperty name="user" property="id" />
</p>

<p>
	<strong>Your Full name:</strong>
	<jsp:getProperty property="firstName" name="user"/>
	<jsp:getProperty property="lastName" name="user"/>
</p>
<p>
	<strong>Gender</strong>
	<jsp:getProperty property="gender" name="user"/>
</p>












</body>
</html>