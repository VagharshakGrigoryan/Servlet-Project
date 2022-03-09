<%--@elvariable id="user" type="servlet"--%>
<%@ page contentType="text/html; charset=utf-8"

         pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
  <a href='<c:url value="/logout" />'>Logout</a>
</div>
</body>
</html>