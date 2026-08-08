<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main JSP file</title>
</head>
<body>
<%-- header content --%>
 <%@ include file="header.jsp" %>
 <%-- end header content --%>
 
 <%-- main content --%>
	<main>
        <h3>Main Content Area</h3>
        <p>This is the core content of the homepage.</p>
    </main>

<%-- end main content--%> 

<%-- footer content --%>
 <%@ include file="footer.jsp" %>
 <%-- end footer content --%>
</body>
</html>