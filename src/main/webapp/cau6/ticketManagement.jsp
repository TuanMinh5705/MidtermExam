<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau6.Ticket" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Show Movie Ticket List</title>
</head>
<body>
<%
    List<Ticket> ticketList = new ArrayList<>();

    ticketList.add(new Ticket("T001", "Avatar", "10:00 AM", 120000));
    ticketList.add(new Ticket("T002", "The Batman", "02:00 PM", 100000));
    ticketList.add(new Ticket("T003", "Avengers: Endgame", "06:00 PM", 150000));
    ticketList.add(new Ticket("T004", "Spider-Man", "08:00 PM", 130000));

    request.setAttribute("ticketList", ticketList);
%>

<h1>Danh sách Vé Xem Phim</h1>
<table border="1">
    <tr>
        <td>Mã vé</td>
        <td>Tên phim</td>
        <td>Suất chiếu</td>
        <td>Giá vé</td>
    </tr>
    <c:forEach var="ticket" items="${ticketList}">
        <tr>
            <td>${ticket.ticketId}</td>
            <td>${ticket.movieName}</td>
            <td>${ticket.showtime}</td>
            <td>${ticket.ticketPrice}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
