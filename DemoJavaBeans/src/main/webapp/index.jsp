<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
</head>
<body>


<h2>Registration Form</h2>

<form action="register.jsp" method="post">

	ID: <input type="number" name="id" required><br>
	First name: <input type="text" name="firstName" required><br>
	Last name: <input type="text" name="lastName" required><br>
	Gender: <input type="text" name="gender" required><br>
	<input type="submit" value="Register Now!">


</form>




</body>
</html>