<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Author: Brian Lee
  Date: 7/1/19
  Time: 1:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="user.UserDAO"%>
<%@ page import="user.UserDTO"%>
<%@ page import="java.io.PrintWriter" %>
<%
    String userID = null;
    String userPW = null;
    if (request.getParameter("userID") != null) {
        userID = request.getParameter("userID");
    }
    if (request.getParameter("userPW") != null) {
        userPW = request.getParameter("userPW");
    }
    if (userID.equals("") || userPW.equals("")) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('Fields cannot be blank');");
        script.println("history.back();");
        script.println("</script>");
        script.close();
        return;
    }
    UserDAO userDAO = new UserDAO();
    int result = userDAO.join(userID, userPW);
    if (result == 1) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("location.href = 'welcomeUser.jsp'");
        script.println("</script>");
        script.close();
        return;
    }
%>