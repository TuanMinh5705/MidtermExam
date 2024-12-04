<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau7.BankAccount" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Show Bank Account List</title>
</head>
<body>
<%
  // Khởi tạo danh sách tài khoản ngân hàng
  List<BankAccount> accountList = new ArrayList<>();

  // Thêm tài khoản vào danh sách
  accountList.add(new BankAccount("001", "Nguyen Thi Lan", 5000000, "Hoạt động"));
  accountList.add(new BankAccount("002", "Tran Minh Tuan", 1000000, "Đóng"));
  accountList.add(new BankAccount("003", "Le Thanh Tam", 20000000, "Hoạt động"));
  accountList.add(new BankAccount("004", "Pham Hoang Nam", 1500000, "Hoạt động"));

  // Gán danh sách tài khoản vào request attribute
  request.setAttribute("accountList", accountList);
%>

<h1>Danh sách Tài khoản Ngân hàng</h1>
<table border="1">
  <tr>
    <td>Số tài khoản</td>
    <td>Tên chủ tài khoản</td>
    <td>Số dư</td>
    <td>Trạng thái</td>
  </tr>
  <c:forEach var="account" items="${accountList}">
    <tr>
      <td>${account.accountNumber}</td>
      <td>${account.accountHolder}</td>
      <td>${account.balance}</td>
      <td>${account.accountStatus}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
