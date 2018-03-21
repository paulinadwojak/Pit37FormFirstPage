<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>

    <h1>Welcome, please login:</h1>

      
    <form action="login" method="post">
		Login: <input type="text" name="loginname"><br/>
		Password: <input type="password" name="password"><br/>
		Name: <input type="text" name="name"/><br/>
		Surname: <input type="text" name="surename"/><br/>
        <input type="submit" value="login"/>
	</form>


</body>
</html>