<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%-- Allocating a custom 16-kilobyte buffer and enabling auto-flush --%>
<%@ page buffer="1b" autoFlush="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Buffered Stream Output</title>
</head>
<body>
<%-- header content --%>
 <%@ include file="header.jsp" %>
 <%-- end header content --%>
    <h2>Generating Large Data Matrix...</h2>
    
    <%
        // Simulating heavy content generation
        for (int i = 1; i <= 2000; i++) {
            out.print("Data point " + i + " processed.<br/>");
            // The 16kb buffer will fill up and automatically clear/flush to the browser
        }
    %>
    <%-- footer content --%>
 <%@ include file="footer.jsp" %>
 <%-- end footer content --%>
</body>
</html>