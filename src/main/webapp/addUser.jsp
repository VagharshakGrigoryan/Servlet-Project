<%@ page import="model.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<%
    User user= (User) request.getAttribute("user");%>
<head>
    <title>AdUser</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">

<body >
<br>
<br>
<div style="text-align: center " ><h1><p style="font-size: 100px; color: #b8daff" >Welcome</p> </h1><br></div>
<br>
<h1>
    <div style="text-align: center ">

            </div>
        <div style="text-align: center ">
            <div class="card shadow-sm">
                <div class="card-header bg-transparent border-0">
                    <h3 class="mb-0"><i class="far fa-clone pr-1">

                    </i>General Information</h3>
                </div>
                <div style="text-align: center ">
                    <table style="text-align: center">
                        <tr>
                            <th width="30%">Name</th>
                            <td width="2%">:</td>
                            <td><%=user.getName()%></td>
                        </tr>
                        <tr>
                            <th width="30%">Surname</th>
                            <td width="2%">:</td>
                            <td><%=user.getSurname()%></td>
                        </tr>
                        <tr>
                            <th width="30%">Email</th>
                            <td width="2%">:</td>
                            <td><%=user.getEmail()%></td>
                        </tr>
                        <tr>
                            <th width="30%">Password</th>
                            <td width="2%">:</td>
                            <td> <%=user.getPassword()%></td>
                        </tr>
                        <tr>
                            <th width="30%">Gender</th>
                            <td width="2%">:</td>
                            <td><%=user.getGender()%></td>
                        </tr>

                    </table>
                </div>
            </div>
        <br>

        <div style="text-align: center ">
            <br>
            <h2>
                <a href="${pageContext.request.contextPath}/logout">
                    <button class="btn btn-primary">Logout</button>
                </a><br>
            </h2>
        </div>
    </div></h1>
</body>
</html>