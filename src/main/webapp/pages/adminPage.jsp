<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <link href="css/app.css" rel="stylesheet" type="text/css">
    <title>Admin cabinet</title>
</head>
<body class="security-app">
    <h1>
        Welcome to admin page
    </h1>
    <form action="/logout" method="post">
        <input type="submit" value="Log Out"/><input
            type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>

</body>
</html>