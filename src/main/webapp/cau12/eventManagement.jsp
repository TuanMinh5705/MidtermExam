<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau12.Event" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách Sự Kiện</title>
</head>
<body>
<%
    // Tạo danh sách sự kiện mẫu
    List<Event> eventList = new ArrayList<>();

    // Thêm các sự kiện mẫu
    eventList.add(new Event("Hội thảo Java", new java.util.Date(), "Hà Nội", 100));
    eventList.add(new Event("Lễ kỷ niệm Công ty", new java.util.Date(), "TP. Hồ Chí Minh", 300));
    eventList.add(new Event("Triển lãm công nghệ", new java.util.Date(), "Đà Nẵng", 150));
    eventList.add(new Event("Chương trình giao lưu sinh viên", new java.util.Date(), "Cần Thơ", 200));

    // Đưa danh sách vào request attribute để có thể sử dụng trong JSP
    request.setAttribute("eventList", eventList);
%>

<h1>Danh sách Sự Kiện</h1>
<table border="1">
    <tr>
        <th>Tên sự kiện</th>
        <th>Ngày giờ</th>
        <th>Địa điểm</th>
        <th>Số lượng người tham gia</th>
    </tr>
    <c:forEach var="event" items="${eventList}">
        <tr>
            <td>${event.eventName}</td>
            <td>${event.eventDateTime}</td>
            <td>${event.location}</td>
            <td>${event.participantsCount}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
