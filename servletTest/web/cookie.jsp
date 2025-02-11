<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <title>Cookie</title>
</head>

<%
    Cookie[] cookies = request.getCookies();
    String userName = "null";
    for(int i=0; i < cookies.length; i++)
    {
        if(cookies[i].getName().equals("username"))
        {
            userName = cookies[i].getName() + " " + cookies[i].getValue();
        }
    }
%>

<body>
<div class="container mt-5 mb-5">
    <div class="row justify-content-center">
        <div class="card" style="max-width: 540px;">
            <div class="row g-0">
                <div>Cookie:<%=userName%></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
