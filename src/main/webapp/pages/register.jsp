<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Registration</title>
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
<div class="container" style="width: 600px;height: 450px; margin:auto;background-color: plum">
    <h1 style="color: blueviolet;text-align: center">Registration</h1>
    <form action="${pageContext.request.contextPath}/create" method="POST">
        <div class="form-group">
            <label for="username" style="color: blueviolet">Enter Username:</label><input type="text"
                                                                                          class="form-control" id="username"
                                                                                            name="username">
        </div>
        <div class="form-group">
            <label for="email" style="color: blueviolet">Enter your email:</label><input type="text"
                                                                                                class="form-control" id="email"
                                                                                                name="email">
        </div>

        <div class="form-group">
            <label for="password" style="color: blueviolet">Enter your password:</label><input type="password"
                                                                                     class="form-control" id="password"
                                                                                     name="password">
        </div>

        <button type="submit" class="btn btn-default">Submit</button>
<div>
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
</div>
    </form>

</div>
</body>
</html>