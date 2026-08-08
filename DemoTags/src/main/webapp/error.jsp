<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.*" %>

<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- header content --%>
 <%@ include file="header.jsp" %>
 <%-- end header content --%>
<p>This is error page</p>
<%
Date obj = new Date();
%>
<p><%= obj %></p>
<%-- footer content --%>
 <%@ include file="footer.jsp" %>
 <%-- end footer content --%>
</body>
</html>