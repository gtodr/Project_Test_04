<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<h1>用户注册</h1>
<form action="doRegister.jsp" method="post">
    <label>用户名：</label>
    <input type="text" name="username"><br><br>
    <label>密码：</label>
    <input type="password" name="password"><br><br>
    <label>性别：</label>
    <select name="gender">
        <option value="male">男</option>
        <option value="female">女</option>
    </select><br><br>
    <input type="submit" value="注册">
</form>
</body>
</html>