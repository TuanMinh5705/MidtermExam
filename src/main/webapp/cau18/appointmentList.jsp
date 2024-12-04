<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau18.Appointment" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Danh sách Cuộc Hẹn</title>
</head>
<body>
<%
  // Tạo danh sách cuộc hẹn mẫu
  List<Appointment> appointmentList = new ArrayList<>();

  // Thêm các cuộc hẹn mẫu vào danh sách
  appointmentList.add(new Appointment("Cuộc họp dự án", new java.util.Date(), "Phòng 101, Tòa nhà A", "Thảo luận về tiến độ dự án"));
  appointmentList.add(new Appointment("Hẹn với khách hàng", new java.util.Date(), "Café Coffee Shop", "Chào hỏi và trao đổi công việc"));
  appointmentList.add(new Appointment("Cuộc họp nội bộ", new java.util.Date(), "Phòng 202, Tòa nhà B", "Đánh giá tiến độ công việc"));
  appointmentList.add(new Appointment("Lịch thăm bệnh nhân", new java.util.Date(), "Bệnh viện XYZ", "Khám bệnh và tư vấn"));

  // Đưa danh sách cuộc hẹn vào request attribute để có thể sử dụng trong JSP
  request.setAttribute("appointmentList", appointmentList);
%>

<h1>Danh sách Cuộc Hẹn</h1>
<table border="1">
  <tr>
    <th>Tên cuộc hẹn</th>
    <th>Ngày giờ</th>
    <th>Địa điểm</th>
    <th>Mô tả</th>
  </tr>
  <c:forEach var="appointment" items="${appointmentList}">
    <tr>
      <td>${appointment.name}</td>
      <td>${appointment.dateTime}</td>
      <td>${appointment.location}</td>
      <td>${appointment.description}</td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
