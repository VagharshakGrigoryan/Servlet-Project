<%@ page import="model.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

    <title>Registration Page</title>

</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">

<body>
<div id="top">

    <form method="Post" action='<c:url value="/register" />'>

        <div class="form-group">
            <label>Name</label>
            <label>
                <input type="text" name="name" class="form-control" aria-describedby="emailHelp"
                       placeholder="Enter Your first name" required>
            </label>
        </div>
        <div class="form-group">
            <label>Surname</label>
            <label>
                <input type="text" name="surname" class="form-control" aria-describedby="emailHelp"
                       placeholder="Enter your last name" required>
            </label>
        </div>
        <div class="form-group">
            <label>Email</label>
            <label>
                <input type="email" name="email" class="form-control" aria-describedby="emailHelp"
                       placeholder="Enter your email" required>
            </label>
        </div>


        <div class="form-group">
            <label for="InputPassword">Confirm Password</label>
            <input type="password" name="password" class="form-control" id="InputPassword"
                   placeholder="Please confirm Password" required>
        </div>

            <tr>
                <td>
                    Gender:
                </td>
                <td>
                    <label>
                        <select name="gender">
                            <option>Male</option>
                            <option>Female</option>
                        </select>
                    </label>
                </td>
            </tr>

        <tr>
            <td>
                type:
            </td>
            <td>
                <label>
                    <select name="type">
                        <option>ADMIN</option>
                        <option>USER</option>
                    </select>
                </label>
            </td>
        </tr>

        <tr>
                <td>
                    <input type="submit" value="register">
                </td>
                <td>
                    <input type="reset" value="reset">
                </td>
            </tr>
    </form>
</div></body>
</html>

