<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau5.Employee" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Show Employee List</title>
</head>
<body>
<%
  List<Employee> employeeList = new ArrayList<>();

  employeeList.add(new Employee("Nguyen Thi Lan", "Kỹ thuật", "Kỹ sư", 12000000, "Đang làm"));
  employeeList.add(new Employee("Tran Minh Tuan", "Marketing", "Chuyên viên", 8000000, "Nghỉ việc"));
  employeeList.add(new Employee("Le Thanh Tam", "Kế toán", "Kế toán trưởng", 15000000, "Đang làm"));
  employeeList.add(new Employee("Pham Hoang Nam", "Hành chính", "Trưởng phòng", 18000000, "Đang làm"));
  request.setAttribute("employeeList", employeeList);
%>

<h1>Danh sách Nhân viên</h1>
<table border="1">
  <tr>
    <td>Tên nhân viên</td>
    <td>Phòng ban</td>
    <td>Chức vụ</td>
    <td>Lương</td>
    <td>Trạng thái làm việc</td>
  </tr>
  <c:forEach var="employee" items="${employeeList}">
    <tr>
      <td>${employee.name}</td>
      <td>${employee.department}</td>
      <td>${employee.position}</td>
      <td>${employee.salary}</td>
      <td>${employee.workingStatus}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
