<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Date"  %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>This is JSP file</h1>
<%-- 
This is comment syntax
 --%>

<%
double price = 500;
int VAT = 10;
double total;

total = price + (price * 10 /100);

%>
<p>Total amount included VAT is: <%= total %></p>

<%
Date obj = new Date();
%>

<p>Today is: <%= obj %></p>
</body>
</html>