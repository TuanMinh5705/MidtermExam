<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau10.OnlineCourse" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách Khóa Học Trực Tuyến</title>
</head>
<body>
<%
    // Khởi tạo danh sách khóa học
    List<OnlineCourse> courseList = new ArrayList<>();

    // Thêm các khóa học vào danh sách
    courseList.add(new OnlineCourse("Khóa học Java cơ bản", "Nguyễn Văn A", 20, 500000));
    courseList.add(new OnlineCourse("Khóa học Python cơ bản", "Trần Thị B", 15, 400000));
    courseList.add(new OnlineCourse("Khóa học Web Development", "Lê Minh C", 25, 700000));
    courseList.add(new OnlineCourse("Khóa học Data Science", "Phạm Thị D", 30, 900000));

    // Gán danh sách khóa học vào request attribute
    request.setAttribute("courseList", courseList);
%>

<h1>Danh sách Khóa Học Trực Tuyến</h1>
<table border="1">
    <tr>
        <th>Tên khóa học</th>
        <th>Giảng viên</th>
        <th>Số giờ học</th>
        <th>Giá tiền</th>
    </tr>
    <c:forEach var="course" items="${courseList}">
        <tr>
            <td>${course.courseName}</td>
            <td>${course.instructor}</td>
            <td>${course.hours}</td>
            <td>${course.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
