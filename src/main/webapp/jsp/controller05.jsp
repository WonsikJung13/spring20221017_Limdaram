<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-18
  Time: 오전 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <form method="get" action="${pageContext.request.contextPath}/ex05/sub02">
    <input type="submit" value="get1">
  </form>

  <form method="post" action="${pageContext.request.contextPath}/ex05/sub03">
    <input type="submit" value="post1">
  </form>

  <form method="get" action="${pageContext.request.contextPath}/ex05/sub04">
    <input type="submit" value="get2">
  </form>

  <form method="post" action="${pageContext.request.contextPath}/ex05/sub05">
    <input type="submit" value="post2">
  </form>

</body>
</html>
