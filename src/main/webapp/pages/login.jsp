<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container" style="background-color: plum; width: 400px; height: 300px ;margin: auto">
    <h1 style="color: blueviolet;text-align: center">Login</h1>
    <form action="/security_check" method="post">
    <div class="form-group">
    <label for="username">Enter Username:</label><input style="margin-left: 5px" type="text" name="username" id="username">
    </div>
    <div class="form-group">
    <label for="password">Enter Password:</label><input style="margin-left: 5px" type="password" name="password" id="password">
    </div>
        <div style="width: 50px;margin: auto">
    <button type="submit" class="btn btn-default">LogIn</button>
        </div>

        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}"/>

    </form>
    <div style="width: 100px;margin: auto"><a style="color: blueviolet" href="/registr">Create account</a></div>
</div>
</body>