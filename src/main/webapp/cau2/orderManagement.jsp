<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau2.Order" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Show Order List</title>
</head>
<body>
<%
    List<Order> listOrders = new ArrayList<>();

    listOrders.add(new Order("OD001", "2024-12-01", "John Doe", "Chưa giao"));
    listOrders.add(new Order("OD002", "2024-12-02", "Jane Smith", "Đang giao"));
    listOrders.add(new Order("OD003", "2024-12-03", "Bob Lee", "Đã giao"));
    request.setAttribute("listOrders", listOrders);
%>

<h1>Show Order List</h1>
<table border="1">
    <tr>
        <td>Order ID</td>
        <td>Order Date</td>
        <td>Customer</td>
        <td>Status</td>
    </tr>
    <c:forEach var="order" items="${listOrders}">
        <tr>
            <td>${order.orderId}</td>
            <td>${order.orderDate}</td>
            <td>${order.customer}</td>
            <td>${order.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
