<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="servlet.AddUser" %>
<%@ page import="model.User" %>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <title>User List</title>
</head>
<body>
<% ArrayList<User> userList = AddUser.userList; %>

<div class="container mt-4 mb-4">
    <div class="row justify-content-center">
        <div class="card" style="max-width: 540px;">
            <div class="row g-0">
                <tr class="card-body">
                    <table>
                        <tr>
                            <th>user name</th>
                            <th>email</th>
                            <th>password</th>
                        </tr>
                    <% for (User u: userList)
                    {%>
                        <tr><td><%=u.getUsername()%></td><td><%=u.getEmail()%></td><td><%=u.getPassword()%></td></tr>
                    <%}%>


                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
