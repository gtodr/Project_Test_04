<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<h1>用户登录</h1>
<form action="doLogin.jsp" method="post">
    <label>用户名：</label>
    <input type="text" name="username"><br><br>
    <label>密码：</label>
    <input type="password" name="password"><br><br>
    <input type="submit" value="登录">
</form>
</body>
</html>