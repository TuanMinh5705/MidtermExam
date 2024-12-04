<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau17.StudyMaterial" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách Tài Liệu Học Tập</title>
</head>
<body>
<%
    // Tạo danh sách tài liệu học tập mẫu
    List<StudyMaterial> materialsList = new ArrayList<>();

    // Thêm các tài liệu mẫu vào danh sách
    materialsList.add(new StudyMaterial("Giới thiệu về Java", "Lập trình Java", "Nguyễn Văn A", "PDF"));
    materialsList.add(new StudyMaterial("Cấu trúc dữ liệu", "Cấu trúc dữ liệu và giải thuật", "Trần Thị B", "Word"));
    materialsList.add(new StudyMaterial("Cơ sở dữ liệu quan hệ", "Cơ sở dữ liệu", "Lê Minh C", "PDF"));
    materialsList.add(new StudyMaterial("Xử lý ảnh với Python", "Lập trình Python", "Phạm Thị D", "PDF"));

    // Đưa danh sách tài liệu vào request attribute để có thể sử dụng trong JSP
    request.setAttribute("materialsList", materialsList);
%>

<h1>Danh sách Tài Liệu Học Tập</h1>
<table border="1">
    <tr>
        <th>Tên tài liệu</th>
        <th>Môn học</th>
        <th>Giảng viên</th>
        <th>Định dạng</th>
    </tr>
    <c:forEach var="material" items="${materialsList}">
        <tr>
            <td>${material.title}</td>
            <td>${material.subject}</td>
            <td>${material.instructor}</td>
            <td>${material.format}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
