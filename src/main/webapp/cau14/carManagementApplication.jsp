<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau14.Car" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách Xe Hơi</title>
</head>
<body>
<%
    // Tạo danh sách xe hơi mẫu
    List<Car> carList = new ArrayList<>();

    // Thêm các xe hơi mẫu vào danh sách
    carList.add(new Car("Toyota Camry", "Toyota", 1000000, "Còn hàng"));
    carList.add(new Car("Honda Civic", "Honda", 800000, "Hết hàng"));
    carList.add(new Car("Ford Mustang", "Ford", 1200000, "Còn hàng"));
    carList.add(new Car("BMW 3 Series", "BMW", 1500000, "Còn hàng"));

    // Đưa danh sách xe hơi vào request attribute để có thể sử dụng trong JSP
    request.setAttribute("carList", carList);
%>

<h1>Danh sách Xe Hơi</h1>
<table border="1">
    <tr>
        <th>Tên xe</th>
        <th>Hãng sản xuất</th>
        <th>Giá bán</th>
        <th>Trạng thái</th>
    </tr>
    <c:forEach var="car" items="${carList}">
        <tr>
            <td>${car.name}</td>
            <td>${car.manufacturer}</td>
            <td>${car.price}</td>
            <td>${car.status}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
