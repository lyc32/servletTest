<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <title>Sign In</title>
</head>

<body>
<div class="container mt-5 mb-5">
    <div class="row justify-content-center">
        <div class="card" style="max-width: 540px;">
            <div class="row g-0">
                <form class="row g-3" action="<%=request.getContextPath()%>/addUser" method="post">
                    <div class="card-body">
                        <h2 class="card-title text-center border-bottom  pb-4">Sign In</h2>
                        <p class="card-text pt-2 pb-2">
                        <div class="col-auto">
                            <label class="col-sm-4 col-form-label">User Name</label>
                            <input type="text" class="form-control" name = 'username' id="username" >
                        </div>
                        <div class="col-auto">
                            <label class="col-sm-4 col-form-label">Email</label>
                            <input type="email" class="form-control" name="email" id="email" placeholder="email@example.com">
                        </div>
                        <div class="col-auto">
                            <label for="inputPassword" class="col-sm-4 col-form-label">Password</label>
                            <input type="password" class="form-control" name="password" id="inputPassword" placeholder="Password">
                        </div>
                        </p>

                        <p class="card-text pt-2 pb-2">
                        <div class="col-auto border-top mt-4 pt-4 text-center">
                            <input type="submit" class="btn btn-primary mb-3 btn-lg py-1 px-5 ms-4" value="Sign In">
                            <input type="reset"  class="btn btn-primary mb-3 btn-lg py-1 px-5 ms-4" value="Reset">
                        </div>
                        </p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
