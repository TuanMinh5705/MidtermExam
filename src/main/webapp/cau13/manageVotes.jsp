<%@ page import="java.util.List" %>
<%@ page import="com.example.midtermexam.cau13.Poll" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách Bình Chọn</title>
</head>
<body>
<%
    // Tạo danh sách các cuộc bình chọn mẫu
    List<Poll> pollList = new ArrayList<>();

    // Thêm các cuộc bình chọn mẫu
    List<String> options1 = new ArrayList<>();
    options1.add("Java");
    options1.add("Python");
    options1.add("JavaScript");
    Poll poll1 = new Poll("Ngôn ngữ lập trình yêu thích", options1);
    poll1.vote(0);  // Giả lập bình chọn cho lựa chọn đầu tiên
    poll1.vote(1);  // Giả lập bình chọn cho lựa chọn thứ hai
    poll1.vote(1);  // Giả lập bình chọn cho lựa chọn thứ hai
    pollList.add(poll1);

    List<String> options2 = new ArrayList<>();
    options2.add("Laptop");
    options2.add("Máy tính bảng");
    options2.add("Điện thoại");
    Poll poll2 = new Poll("Thiết bị điện tử yêu thích", options2);
    poll2.vote(0);  // Giả lập bình chọn cho lựa chọn đầu tiên
    poll2.vote(2);  // Giả lập bình chọn cho lựa chọn thứ ba
    poll2.vote(2);  // Giả lập bình chọn cho lựa chọn thứ ba
    pollList.add(poll2);

    // Đưa danh sách bình chọn vào request attribute để có thể sử dụng trong JSP
    request.setAttribute("pollList", pollList);
%>

<h1>Danh sách Bình Chọn</h1>
<c:forEach var="poll" items="${pollList}">
    <h3>${poll.question}</h3>
    <ul>
        <c:forEach var="index" begin="0" end="${poll.options.size() - 1}">
            <li>
                    ${poll.options[index]} - Lượt bình chọn: ${poll.votes[index]}
            </li>
        </c:forEach>
    </ul>
    <br />
</c:forEach>

</body>
</html>
