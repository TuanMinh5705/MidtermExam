<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau11.EmployeeAttendance" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách Chấm Công Nhân Viên</title>
</head>
<body>
<%
    List<EmployeeAttendance> attendanceList = new ArrayList<>();

    attendanceList.add(new EmployeeAttendance("Nguyễn Văn A", new java.util.Date(), 8, "Hoàn tất"));
    attendanceList.add(new EmployeeAttendance("Trần Thị B", new java.util.Date(), 6, "Thiếu"));
    attendanceList.add(new EmployeeAttendance("Lê Minh C", new java.util.Date(), 8, "Hoàn tất"));
    attendanceList.add(new EmployeeAttendance("Phạm Thị D", new java.util.Date(), 5, "Thiếu"));

    request.setAttribute("attendanceList", attendanceList);
%>

<h1>Danh sách Chấm Công Nhân Viên</h1>
<table border="1">
    <tr>
        <th>Tên nhân viên</th>
        <th>Ngày làm việc</th>
        <th>Số giờ làm</th>
        <th>Trạng thái</th>
    </tr>
    <c:forEach var="attendance" items="${attendanceList}">
        <tr>
            <td>${attendance.employeeName}</td>
            <td>${attendance.workingDay}</td>
            <td>${attendance.hoursWorked}</td>
            <td>${attendance.status}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
