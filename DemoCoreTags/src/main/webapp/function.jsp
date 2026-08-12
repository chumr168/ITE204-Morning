<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>


<!DOCTYPE html>
<html>
<head>
<style>
       <style>
        body { font-family: Arial, sans-serif; margin: 30px; line-height: 1.6; }
        .demo-box { background: #f4f4f9; border-left: 5px solid #00769d; padding: 15px; margin-bottom: 20px; }
        h3 { color: #333; margin-top: 0; }
        code { background: #e0e0e0; padding: 2px 5px; font-family: monospace; }
        .output { color: #d32f2f; font-weight: bold; }
    </style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <h2>JSTL Functions Library (`fn:`) Reference Demonstration</h2>

    <%-- Setup sample variables --%>
    <c:set var="mainString" value="  Learn Java Web Programming Today!  " />
    <c:set var="searchKeyword" value="Java" />
    <c:set var="csvData" value="Apple,Banana,Orange,Mango" />

    <!-- 1. fn:trim and fn:length -->
    <div class="demo-box">
        <h3>1. Trim and Length (`fn:trim`, `fn:length`)</h3>
        <p>Original String: <code>"${mainString}"</code></p>
        <p>Original Length: <span class="output">${fn:length(mainString)}</span> characters.</p>
        
        <c:set var="trimmedString" value="${fn:trim(mainString)}" />
        <p>Trimmed String: <code>"${trimmedString}"</code></p>
        <p>Trimmed Length: <span class="output">${fn:length(trimmedString)}</span> characters.</p>
    </div>

    <!-- 2. fn:contains -->
    <div class="demo-box">
        <h3>2. Substring Existence Checking (`fn:contains`)</h3>
        <p>Searching for "<code>${searchKeyword}</code>" inside "<code>${trimmedString}</code>":</p>
        <p class="output">
            <c:choose>
                <c:when test="${fn:contains(trimmedString, searchKeyword)}">
                    Found it! The text contains the word "${searchKeyword}".
                </c:when>
                <c:otherwise>
                    Not Found! The word "${searchKeyword}" is missing.
                </c:otherwise>
            </c:choose>
        </p>
    </div>

    <!-- 3. fn:startsWith and fn:endsWith -->
    <div class="demo-box">
        <h3>3. Prefix & Suffix Checking (`fn:startsWith`, `fn:endsWith`)</h3>
        <p>Does <code>"${trimmedString}"</code> start with "Learn"? 
            <span class="output">${fn:startsWith(trimmedString, 'Learn')}</span>
        </p>
        <p>Does <code>"${trimmedString}"</code> end with "Yesterday!"? 
            <span class="output">${fn:endsWith(trimmedString, 'Yesterday!')}</span>
        </p>
    </div>

    <!-- 4. fn:substring -->
    <div class="demo-box">
        <h3>4. Extracting Substrings (`fn:substring`)</h3>
        <p>Extracting index 6 to 10 from <code>"${trimmedString}"</code>:</p>
        <p>Result: <span class="output">${fn:substring(trimmedString, 6, 10)}</span></p>
    </div>

    <!-- 5. fn:split and c:forEach loop -->
    <div class="demo-box">
        <h3>5. Splitting String into an Array (`fn:split`)</h3>
        <p>Parsing raw CSV data string: <code>"${csvData}"</code></p>
        <c:set var="fruitsArray" value="${fn:split(csvData, ',')}" />
        <p>Total items extracted: <span class="output">${fn:length(fruitsArray)}</span></p>
        <ul>
            <c:forEach var="fruit" items="${fruitsArray}">
                <li>Fruit Item: <span class="output">${fruit}</span></li>
            </c:forEach>
        </ul>
    </div>

    <!-- 6. Case Transformations -->
    <div class="demo-box">
        <h3>6. Case Modification (`fn:toUpperCase`, `fn:toLowerCase`)</h3>
        <p>Uppercase conversion: <span class="output">${fn:toUpperCase(trimmedString)}</span></p>
        <p>Lowercase conversion: <span class="output">${fn:toLowerCase(trimmedString)}</span></p>
    </div>
    
    
</body>
</html>