<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-18
  Time: 오전 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>c04 jsp</h1>
    <form method="get" action="${pageContext.request.contextPath}/ex04/sub02">
        <input type="submit" value="get">
    </form>

    <form method="post" action="${pageContext.request.contextPath}/ex04/sub03">
        <input type="submit" value="post">
    </form>

    <form method="get" action="${pageContext.request.contextPath}/ex04/sub04">
        <input type="submit" value="get입력">
    </form>

    <form method="post" action="${pageContext.request.contextPath}/ex04/sub04">
        <input type="submit" value="post입력">
    </form>
</body>
</html>
