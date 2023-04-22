<%@ page import="java.io.IOException" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.BufferedReader" %><%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    try {
        // 打开 user.txt 文件
        BufferedReader reader = new BufferedReader(new FileReader("/Users/dwayne/Desktop/CS/Java/CourseTest/Project_Test_04/src/user.txt"));

        String line;
        boolean loginSuccess = false;

        // 逐行读取 user.txt 文件中的用户数据，查找是否存在匹配的用户
        while ((line = reader.readLine()) != null) {
            String[] userData = line.split(",");
            if (userData[0].equals(username) && userData[1].equals(password)) {
                loginSuccess = true;
                break;
            }
        }

        // 关闭文件
        reader.close();

        if (loginSuccess) {
            // 登录成功，显示成功页面
            response.sendRedirect("loginSuccess.jsp");
        } else {
            // 登录失败，显示错误页面
            response.sendRedirect("loginError.jsp");
        }
    } catch (IOException e) {
        e.printStackTrace();

        // 登录失败，显示错误页面
        response.sendRedirect("loginError.jsp");
    }
%>