<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau9.Tour" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Danh sách Tour Du Lịch</title>
</head>
<body>
<%
  // Khởi tạo danh sách tour
  List<Tour> tourList = new ArrayList<>();

  // Thêm các tour vào danh sách
  tourList.add(new Tour("Tour Hà Nội - Hạ Long", "Hà Nội, Quảng Ninh", new java.text.SimpleDateFormat("dd/MM/yyyy").parse("10/12/2024"), 3000000, "Còn chỗ"));
  tourList.add(new Tour("Tour Sài Gòn - Phú Quốc", "Sài Gòn, Phú Quốc", new java.text.SimpleDateFormat("dd/MM/yyyy").parse("15/12/2024"), 4000000, "Hết chỗ"));
  tourList.add(new Tour("Tour Đà Nẵng - Hội An", "Đà Nẵng, Quảng Nam", new java.text.SimpleDateFormat("dd/MM/yyyy").parse("20/12/2024"), 2500000, "Còn chỗ"));
  tourList.add(new Tour("Tour Nha Trang - Cam Ranh", "Nha Trang, Khánh Hòa", new java.text.SimpleDateFormat("dd/MM/yyyy").parse("25/12/2024"), 3500000, "Còn chỗ"));

  // Gán danh sách tour vào request attribute
  request.setAttribute("tourList", tourList);
%>

<h1>Danh sách Tour Du Lịch</h1>
<table border="1">
  <tr>
    <th>Tên tour</th>
    <th>Địa điểm</th>
    <th>Ngày khởi hành</th>
    <th>Giá</th>
    <th>Tình trạng</th>
  </tr>
  <c:forEach var="tour" items="${tourList}">
    <tr>
      <td>${tour.tourName}</td>
      <td>${tour.destination}</td>
      <td><fmt:formatDate value="${tour.departureDate}" pattern="dd/MM/yyyy" /></td>
      <td>${tour.price}</td>
      <td>${tour.status}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
