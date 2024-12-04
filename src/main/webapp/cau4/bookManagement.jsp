<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau4.Book" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Show Book List</title>
</head>
<body>
<%
    List<Book> bookList = new ArrayList<>();

    bookList.add(new Book("The Great Gatsby", "F. Scott Fitzgerald", "Fiction", 1925));
    bookList.add(new Book("1984", "George Orwell", "Dystopian", 1949));
    bookList.add(new Book("To Kill a Mockingbird", "Harper Lee", "Fiction", 1960));
    bookList.add(new Book("Moby-Dick", "Herman Melville", "Adventure", 1851));
    request.setAttribute("bookList", bookList);
%>

<h1>Danh sách Sách trong Thư viện</h1>
<table border="1">
    <tr>
        <td>Tên sách</td>
        <td>Tác giả</td>
        <td>Thể loại</td>
        <td>Năm xuất bản</td>
    </tr>
    <c:forEach var="book" items="${bookList}">
        <tr>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.category}</td>
            <td>${book.yearOfPublication}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
