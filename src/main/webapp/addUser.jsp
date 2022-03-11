<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.List" %>
<%@ page import="model.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">

<html>
<head>
    <title>Us</title>
</head>
<body>

<% String mesege = (String) session.getAttribute("msg");
    request.setAttribute("msg", mesege);%>


<c:if test="${msg != null}">
    <span><%=mesege%></span>
</c:if>
<c:if test="${msg.equals(msg)}">
    <span><%=mesege%></span>
</c:if>


<% List<User> users = (List<User>) request.getAttribute("user");
request.setAttribute("user",users);
%>


<h1>
    <div style="text-align: center ">

        <table border="1">

            <tr>
                <th>Name</th>
                <th>Surname</th>
            </tr>

            <c:forEach var="user" items="${user}">
                <c:if test="${user != null}">
                </c:if>

                <tr>
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.surname}" /></td>
                </tr>
            </c:forEach>
            
        </table>

    </div>
</h1>

<a href='<c:url value="/logout" />'>
    <button class="btn btn-primary">LOGOUT</button>
</a>
<br>
</body>
</html>



