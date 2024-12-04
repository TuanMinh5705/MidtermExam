<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau20.Scholarship" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách Học Bổng</title>
</head>
<body>
<%
    // Tạo danh sách học bổng mẫu
    List<Scholarship> scholarshipList = new ArrayList<>();

    // Thêm các học bổng mẫu vào danh sách
    scholarshipList.add(new Scholarship("Học bổng Toàn phần", "Điểm trung bình từ 9.0 trở lên", 5000000, new java.util.Date()));
    scholarshipList.add(new Scholarship("Học bổng Nghiên cứu", "Có bài báo nghiên cứu xuất sắc", 3000000, new java.util.Date()));
    scholarshipList.add(new Scholarship("Học bổng Thể thao", "Giành huy chương vàng trong các giải đấu quốc gia", 2000000, new java.util.Date()));
    scholarshipList.add(new Scholarship("Học bổng Kỹ thuật", "Hoàn thành khóa học kỹ thuật chuyên sâu", 4000000, new java.util.Date()));

    // Đưa danh sách học bổng vào request attribute để có thể sử dụng trong JSP
    request.setAttribute("scholarshipList", scholarshipList);
%>

<h1>Danh sách Học Bổng</h1>
<table border="1">
    <tr>
        <th>Tên học bổng</th>
        <th>Tiêu chí</th>
        <th>Giá trị</th>
        <th>Hạn nộp đơn</th>
    </tr>
    <c:forEach var="scholarship" items="${scholarshipList}">
        <tr>
            <td>${scholarship.name}</td>
            <td>${scholarship.criteria}</td>
            <td>${scholarship.value}</td>
            <td>${scholarship.deadline}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
