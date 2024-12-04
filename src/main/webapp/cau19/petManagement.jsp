<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau19.Pet" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách Thú Cưng</title>
</head>
<body>
<%
    // Tạo danh sách thú cưng mẫu
    List<Pet> petList = new ArrayList<>();

    // Thêm các thú cưng mẫu vào danh sách
    petList.add(new Pet("Bella", "Chó", 3, "Nguyễn Thị A"));
    petList.add(new Pet("Milo", "Mèo", 2, "Trần Văn B"));
    petList.add(new Pet("Max", "Chó", 5, "Lê Minh C"));
    petList.add(new Pet("Luna", "Mèo", 1, "Phạm Thị D"));

    // Đưa danh sách thú cưng vào request attribute để có thể sử dụng trong JSP
    request.setAttribute("petList", petList);
%>

<h1>Danh sách Thú Cưng</h1>
<table border="1">
    <tr>
        <th>Tên thú cưng</th>
        <th>Giống loài</th>
        <th>Tuổi</th>
        <th>Chủ sở hữu</th>
    </tr>
    <c:forEach var="pet" items="${petList}">
        <tr>
            <td>${pet.name}</td>
            <td>${pet.species}</td>
            <td>${pet.age}</td>
            <td>${pet.owner}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
