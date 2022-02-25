<%--@elvariable id="user" type="servlet"--%>
<%@ page contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>logout</title>
</head>
<body>
<div style="text-align: center">
  <b>${user.fullname} (${user.email})</b>
  <br><br>
  <a href="${pageContext.request.contextPath}/logout">Logout</a>
</div>
</body>
</html>