<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage ="error.jsp" %>

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
<h1>Welcome to JSP</h1>
<p>This is paragraph under H1 html tag</p>
<%-- 
HERE IS COMMENT
BLOCK
--%>
<%! 
    int a = 10;
    int b = 0;
    public int myString(int x, int y){
    	return (x/y);
    }
%>
<p>Display result= <%= myString(a,b) %></p>

<%-- Scriptlet tag --%>

<%
%>
<%-- footer content --%>
 <%@ include file="footer.jsp" %>
 <%-- end footer content --%>
</body>
</html>