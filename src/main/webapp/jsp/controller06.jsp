<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-18
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

  <form method="get" action="${pageContext.request.contextPath}/ex06/sub01">
    <input type="submit" value="get">
  </form>

  <form method="post" action="${pageContext.request.contextPath}/ex06/sub01">
    <input type="submit" value="post">
  </form>

</body>
</html>
