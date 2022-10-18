<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-18
  Time: 오후 3:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/ex12/sub04">
  이름 <input type="text" name = "name"> <br>
  주소 <input type="text" name = "address"> <br>
  나이 <input type="number" name = "age"> <br>
  이메일 <input type="email" name = "email"> <br>
  암호 <input type="password" name = "password"> <br>
  <button>전송</button>


</form>
</body>
</html>
