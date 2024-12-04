<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau16.Patient" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Danh sách Bệnh Nhân</title>
</head>
<body>
<%
  // Tạo danh sách bệnh nhân mẫu
  List<Patient> patientList = new ArrayList<>();

  // Thêm các bệnh nhân mẫu vào danh sách
  patientList.add(new Patient("Nguyễn Văn A", 45, "Cảm cúm", new java.util.Date(), "Đang điều trị"));
  patientList.add(new Patient("Trần Thị B", 32, "Viêm phổi", new java.util.Date(), "Đã khỏi"));
  patientList.add(new Patient("Lê Minh C", 60, "Tăng huyết áp", new java.util.Date(), "Đang điều trị"));
  patientList.add(new Patient("Phạm Thị D", 27, "Sốt xuất huyết", new java.util.Date(), "Đang chờ"));

  // Đưa danh sách bệnh nhân vào request attribute để có thể sử dụng trong JSP
  request.setAttribute("patientList", patientList);
%>

<h1>Danh sách Bệnh Nhân</h1>
<table border="1">
  <tr>
    <th>Tên</th>
    <th>Tuổi</th>
    <th>Bệnh lý</th>
    <th>Ngày nhập viện</th>
    <th>Trạng thái điều trị</th>
  </tr>
  <c:forEach var="patient" items="${patientList}">
    <tr>
      <td>${patient.name}</td>
      <td>${patient.age}</td>
      <td>${patient.disease}</td>
      <td>${patient.admissionDate}</td>
      <td>${patient.treatmentStatus}</td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
