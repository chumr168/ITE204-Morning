<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
        body { font-family: Arial, sans-serif; margin: 30px; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #4CAF50; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
    </style>
    
<meta charset="UTF-8">
<title>Product List</title>
</head>
<body>
<h2>Product Management Dashboard</h2>

<table>
	<thead>
		<tr>
			<th>ID</th>
			<th>Product Name</th>
			<th>Price</th>
			<th>Quantity</th>
		</tr>
	</thead>
	<tbody>
	<!-- forEach loop through servlet data from ProductController -->
	<c:forEach var="product" items="${products}">
		<tr>
			<td>${product.id}</td>
			<td>${product.name }</td>
			<td>${product.price }</td>
			<td>${product.quantity}</td>
		</tr>
	</c:forEach>
	
	</tbody>
	
</table>

</body>
</html>