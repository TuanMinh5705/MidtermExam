
<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau1.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.midtermexam.cau1.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Show Product list</title>
</head>
<body>
<%
  List<Product> listProduct = new ArrayList<>();

  listProduct.add(new Product("Apple", "20.000", "Nhonn", "https://cdn-media.sforum.vn/storage/app/media/THANHAN/avartar-anime-91.jpg"));
  listProduct.add(new Product("Banana", "10.000", "Nhonn", "https://cdn-media.sforum.vn/storage/app/media/THANHAN/avartar-anime-91.jpg"));
  listProduct.add(new Product("Orange", "10.000", "Nhonn", "https://cdn-media.sforum.vn/storage/app/media/THANHAN/avartar-anime-91.jpg"));
  request.setAttribute("listProduct", listProduct);
%>
<h1>Show product list</h1>
<table border=1>
  <tr>
    <td>Name</td>
    <td>Price</td>
    <td>Describe</td>
    <td>Image</td>
  </tr>
  <c:forEach var="product" items="${listProduct}">
    <tr>
      <td>${product.name}</td>
      <td>${product.price}</td>
      <td>${product.describe}</td>
      <td><image style="width: 100px;height: 100px" src="${product.urlImage}"></image></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
