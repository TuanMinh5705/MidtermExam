<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau15.LeaveRequest" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách Đơn Xin Nghỉ Phép</title>
</head>
<body>
<%
    // Tạo danh sách đơn xin nghỉ phép mẫu
    List<LeaveRequest> leaveRequests = new ArrayList<>();

    // Thêm các đơn xin nghỉ phép mẫu vào danh sách
    leaveRequests.add(new LeaveRequest("Nguyễn Văn A", new java.util.Date(), new java.util.Date(), "Chờ duyệt"));
    leaveRequests.add(new LeaveRequest("Trần Thị B", new java.util.Date(), new java.util.Date(), "Đã duyệt"));
    leaveRequests.add(new LeaveRequest("Lê Minh C", new java.util.Date(), new java.util.Date(), "Chờ duyệt"));
    leaveRequests.add(new LeaveRequest("Phạm Thị D", new java.util.Date(), new java.util.Date(), "Đã duyệt"));

    // Đưa danh sách đơn xin nghỉ phép vào request attribute để có thể sử dụng trong JSP
    request.setAttribute("leaveRequests", leaveRequests);
%>

<h1>Danh sách Đơn Xin Nghỉ Phép</h1>
<table border="1">
    <tr>
        <th>Tên nhân viên</th>
        <th>Ngày bắt đầu</th>
        <th>Ngày kết thúc</th>
        <th>Trạng thái</th>
    </tr>
    <c:forEach var="leaveRequest" items="${leaveRequests}">
        <tr>
            <td>${leaveRequest.employeeName}</td>
            <td>${leaveRequest.startDate}</td>
            <td>${leaveRequest.endDate}</td>
            <td>${leaveRequest.status}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
