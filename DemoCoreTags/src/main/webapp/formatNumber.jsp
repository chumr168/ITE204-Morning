<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html>
<head>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        p {
            margin: 10px 0;
            font-size: 18px;
        }
        strong {
            font-weight: bold;
            color: #007bff;
        }
    </style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <div class="container">
      The Account Balance can be displayed using various ways:
      <c:set var="accountBalance" value="9500.60" />
      <p>as it is: <strong><fmt:formatNumber value="${accountBalance}" type="currency"/></strong></p>
      <p>max. integer digits 3:
      <strong>
          <fmt:formatNumber type="number" maxIntegerDigits="4" value="${accountBalance}" />
      </strong></p>
      <p>max. fraction digits 1:
      <strong>
          <fmt:formatNumber type="number" maxFractionDigits="3" value="${accountBalance}" />
      </strong></p>
      <p>no grouping:
      <strong>
          <fmt:formatNumber type="number" groupingUsed="false" value="${accountBalance}" />
      </strong></p>
      <p>percent with max. integer digits 3:
      <strong>
          <fmt:formatNumber type="percent" maxIntegerDigits="3" value="${accountBalance}" />
      </strong></p>
      <p>percent with min. fraction digits 10:
      <strong>
          <fmt:formatNumber type="percent" minFractionDigits="10" value="${accountBalance}" />
      </strong></p>
      <p>pattern ###.###E0:
      <strong>
          <fmt:formatNumber type="number" pattern="###.###E0" value="${accountBalance}" />
      </strong></p>
      <p>Account Balance in USA :
      <fmt:setLocale value="en_US"/>
      <strong><fmt:formatNumber value="${accountBalance}" type="currency"/></p></strong>
       <p>Account Balance in Canada :
       <fmt:setLocale value="fr_CA"/>
       <strong><fmt:formatNumber value="${accountBalance}" type="currency"/></p></strong>
       
       <p>Account Balance in French :
       <fmt:setLocale value="fr_FR"/>
       <strong><fmt:formatNumber value="${accountBalance}" type="currency"/></p></strong>
    </div>
    
    
</body>
</html>