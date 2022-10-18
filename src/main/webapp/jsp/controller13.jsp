<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-18
  Time: 오후 4:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/ex13/sub01">
    이름 : <input type="text" name="name"> <br>
    주소 : <input type="text" name="address"> <br>
    이메일 : <input type="text" name="email"> <br>
    <button>입력</button>
</form>
</body>
</html>
