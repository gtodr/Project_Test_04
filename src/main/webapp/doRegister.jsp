<%@ page import="java.io.IOException" %>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.BufferedWriter" %>
<%@ page import="java.io.PrintWriter" %><%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String gender = request.getParameter("gender");

    String userData = username + "," + password + "," + gender + "\n";

    try {
        // 打开 user.txt 文件
        PrintWriter writer = new PrintWriter(new BufferedWriter(new FileWriter("/Users/dwayne/Desktop/CS/Java/CourseTest/Project_Test_04/src/user.txt", true)));

        // 将用户数据写入文件
        writer.write(userData);

        // 关闭文件
        writer.close();

        // 注册成功，显示成功页面
        response.sendRedirect("registerSuccess.jsp");
    } catch (IOException e) {
        e.printStackTrace();

        // 注册失败，显示错误页面
        response.sendRedirect("registerError.jsp");
    }
%>