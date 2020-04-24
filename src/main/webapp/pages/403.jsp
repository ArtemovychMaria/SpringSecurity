<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="css/app.css" rel="stylesheet" type="text/css">
    <title>Spring Security Example - ProgrammingFree</title>
</head>
<body>
<h3>You do not have permission to access this page!</h3>
    <form action="/logout" method="post">
        <input type="submit" class="button red big" value="LogIn" /> <input
            type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>
</body>
</html>