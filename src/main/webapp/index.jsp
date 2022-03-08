<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>index</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<body>

<% String msg = (String) session.getAttribute("msg");%>
<% if (msg != null && !"".equals(msg)) { %>
<span><%=msg%></span>
<%
        session.removeAttribute("msg");
    }%>
<div style="text-align: -webkit-center">
    <a style="text-align: center" href="${pageContext.request.contextPath}/login">
        <button class="btn btn-primary">Log In</button>
    </a>
    <a style="text-align: center" href="register.jsp">
        <button class="btn btn-primary">Register</button>
    </a>
</div>
</body>
</html>


