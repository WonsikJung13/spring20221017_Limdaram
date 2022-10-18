<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-18
  Time: 오후 4:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/ex13/sub02">
  이름 : <input type="text" name="name"> <br>
  나이 : <input type="number" name="age"> <br>
  암호 : <input type="password" name="password"> <br>
  이메일 : <input type="email" name="email"> <br>
  <button>전송</button>
</form>
</body>
</html>
