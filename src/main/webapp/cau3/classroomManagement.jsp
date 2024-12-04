<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau3.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Show Student List</title>
</head>
<body>
<%
  List<Student> studentList = new ArrayList<>();

  studentList.add(new Student("Nguyen Thi Mai", "SV001", 8.0));
  studentList.add(new Student("Tran Minh Tuan", "SV002", 4.5));
  studentList.add(new Student("Le Thanh Tam", "SV003", 6.5));
  studentList.add(new Student("Pham Ngoc Lan", "SV004", 3.0));
  request.setAttribute("studentList", studentList);
%>

<h1>Danh sách Sinh viên</h1>
<table border="1">
  <tr>
    <td>Tên sinh viên</td>
    <td>Mã số sinh viên</td>
    <td>Điểm trung bình</td>
    <td>Trạng thái</td>
  </tr>
  <c:forEach var="student" items="${studentList}">
    <tr>
      <td>${student.name}</td>
      <td>${student.studentId}</td>
      <td>${student.averageScore}</td>
      <td>${student.status}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
