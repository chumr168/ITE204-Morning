<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList, java.util.HashMap, java.util.Map" %>
    
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        table { border-collapse: collapse; width: 50%; margin: 20px 0; }
        th, td { border: 1px solid #ddd; padding: 10px; text-align: left; }
        th { background-color: #f4f4f4; }
        .grade-a { color: green; font-weight: bold; }
        .grade-b { color: blue; font-weight: bold; }
        .grade-c { color: darkgoldenrod; font-weight: bold; }
        .grade-f { color: red; font-weight: bold; }
    </style>
</head>
<body>

	<h2>Student Academic Performance</h2>

    <%
        // 1. Initialize Mock Student Data Array via Scriptlet
        ArrayList<Map<String, Object>> studentList = new ArrayList<>();

        Map<String, Object> s1 = new HashMap<>();
        s1.put("name", "John Doe");
        s1.put("score", 92);
        studentList.add(s1);

        Map<String, Object> s2 = new HashMap<>();
        s2.put("name", "Jane Smith");
        s2.put("score", 84);
        studentList.add(s2);

        Map<String, Object> s3 = new HashMap<>();
        s3.put("name", "Bob Johnson");
        s3.put("score", 76);
        studentList.add(s3);

        Map<String, Object> s4 = new HashMap<>();
        s4.put("name", "Alice Williams");
        s4.put("score", 55);
        studentList.add(s4);
        
        Map<String, Object> s5 = new HashMap<>();
        s5.put("name", "Samnang PeyPey");
        s5.put("score", 85);
        studentList.add(s5);

        // Bind data array to page scope for JSTL access
        pageContext.setAttribute("students", studentList);
    %>

    <%-- 2. Render Loop with Conditional Grade Evaluation --%>
    <table>
        <thead>
            <tr>
                <th>Student Name</th>
                <th>Numerical Score</th>
                <th>Letter Grade</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="student" items="${students}">
                <tr>
                    <%-- Secured output string fields to block script vectors --%>
                    <td><c:out value="${student.name}" /></td>
                    <td><c:out value="${student.score}" /></td>
                    <td>
                        <%-- Evaluates conditional logic top-to-bottom --%>
                        <c:choose>
                            <c:when test="${student.score >= 90}">
                                <span class="grade-a">A</span>
                            </c:when>
                            <c:when test="${student.score >= 80}">
                                <span class="grade-b">B</span>
                            </c:when>
                            <c:when test="${student.score >= 70}">
                                <span class="grade-c">C</span>
                            </c:when>
                            <%-- The default fallback condition --%>
                            <c:otherwise>
                                <span class="grade-f">F</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
	
</body>
</html>