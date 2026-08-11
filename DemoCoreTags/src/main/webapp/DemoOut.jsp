<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demo Out Tag</title>
</head>
<body>

<c:out value="${firstName}" />

<!-- demo code -->
   <c:set var="welcome" value="Hello World from JSP." scope="page" /><br>
   <c:out value="${welcome}" /><br>
   <c:out value="${ 5 * 5 }" /><br>
   <c:set var="profession" value="programming" />
    <c:out value="My profession is ${profession}"/><br>
    <c:set var="salary" value="250" />
    <br>
    <c:out value="${salary}" default="My salary is not found" /><br>
    
    <c:out value="<h1>Oops i'm not parsed as html :(</h1>" escapeXml="true" /><br>
    
    <c:out value="<h1>i'm parsed as html</h1><script>alert('XSS');</script>" escapeXml="true" /><br>
    <br>
    <!-- secured as script tags don't get parsed -->
    <c:out value="${userGeneratedContent}" escapeXml="false" /><br>
    <!-- vulnerable to cross-site xss attacks -->
    <c:out value="${userGeneratedContent}" escapeXml="true" />
</body>
</html>