<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-18
  Time: 오후 4:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/ex13/sub03">
    점수 : <input type="number" name="score"> <br>
    이름 : <input type="text" name="className"> <br>
    번호 : <input type="number" name="studentNumber"> <br>
    지역 : <input type="text" name="location"> <br>
    평균 : <input type="number" name="avg"> <br>
    <button>전송</button>
</form>
</body>
</html>
