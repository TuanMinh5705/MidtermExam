<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau8.CartItem" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Giỏ Hàng</title>
</head>
<body>
<%
  // Khởi tạo giỏ hàng với các mục sản phẩm
  List<CartItem> cartItems = new ArrayList<>();

  // Thêm các mục vào giỏ hàng
  cartItems.add(new CartItem("Áo thun", 2, 200000));   // 2 áo thun, mỗi áo 200.000
  cartItems.add(new CartItem("Quần jean", 1, 350000));  // 1 quần jean, giá 350.000
  cartItems.add(new CartItem("Giày thể thao", 1, 600000));  // 1 đôi giày thể thao, giá 600.000

  // Gán giỏ hàng vào request attribute
  request.setAttribute("cartItems", cartItems);
%>

<h1>Danh sách Giỏ Hàng</h1>
<table border="1">
  <tr>
    <th>Sản phẩm</th>
    <th>Số lượng</th>
    <th>Giá tiền</th>
    <th>Tổng cộng</th>
  </tr>
  <c:forEach var="item" items="${cartItems}">
    <tr>
      <td>${item.productName}</td>
      <td>${item.quantity}</td>
      <td>${item.price}</td>
      <td>${item.total}</td>
    </tr>
  </c:forEach>

  <!-- Hiển thị tổng cộng của giỏ hàng -->
  <tr>
    <td colspan="3" align="right"><strong>Tổng cộng:</strong></td>
    <td>
      <c:forEach var="item" items="${cartItems}">
        <c:set var="total" value="${total + item.total}" />
      </c:forEach>
      <c:out value="${total}" />
    </td>
  </tr>
</table>
</body>
</html>
