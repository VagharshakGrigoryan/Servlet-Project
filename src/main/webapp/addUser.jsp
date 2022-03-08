
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
<% String mesege = (String) session.getAttribute("msg");%>
<% if (mesege != null && !"".equals(mesege)) { %>
<span><%=mesege%></span>
<%
        session.removeAttribute("mesege");
    }%>

<% List<User> users = (List<User>) request.getAttribute("user");%>


<h1>
    <div style="text-align: center ">

        <table border="1">

            <tr>
                <th>Name</th>
                <th>Surname</th>
            </tr>
            <% if (users != null && !users.isEmpty()) {
                for (User user : users) {
            %>
            <tr>
                <td><%=user.getName()%>
                </td>
                <td><%=user.getSurname()%>
                </td>
            </tr>
            <% }
            }%>
        </table>

    </div>
</h1>
<a href="${pageContext.request.contextPath}/logout">Logout</a>

<br>
</body>
</html>



