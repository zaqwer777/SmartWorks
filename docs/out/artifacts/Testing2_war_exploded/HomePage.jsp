<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Date: 7/1/19
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<html>
<head>
    <title> Welcome Screen </title>
    <meta charset = "UTF-8"/>
    <meta name="keywords" content="CS 2340, Smart Works, Albert Xing">
    <meta name="description" content="Welcome screen for SmartWorks">
    <meta name="author" content="Albert Xing">
    <meta http-equiv="refresh" content="600">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href = "res/style/HomePage.css" rel = "stylesheet">
</head>
<body>
<div class="header">
    <div class="logo">
        <a href="WelcomeScreen.html"><img src="res/images/SmartWorks1.1.png" alt="SmartWorks Logo" width = "200"; height = "100"></a>  <!-- Logo -->
    </div>

    <ul class="menu">

        <li class="dropdown">
            <span >Features▾</span>
            <div class="dropdown-content">
                <a href="#">Product Tours</a>
                <a href="#">Packages</a>
                <a href="#">Demos</a>
            </div>
        </li>

        <li>
            <a href="#Pricing">Pricing</a>  <!-- About Us -->
        </li>

        <li>
            <a href="#Tutorials">Tutorials</a>  <!-- -->
        </li>

        <li>
            <a href="#FAQ">FAQ</a>  <!-- -->
        </li>

        <li>
            <a href="#AboutUs">About Us</a>  <!-- -->
        </li>

        <li>
            <a href="index.jsp">Login</a>
        </li>

    </ul>
</div>
</body>

<table class="tg" align="center">
    <tr>
        <td class="tg-0lax">Alarm Configuration</th>
        <td class="tg-0lax">Schedule</th>
    </tr>
    <tr>
        <td class="tg-0lax">Battery Levels</td>
        <td class="tg-0lax">Cameras</td>
    </tr>
    <tr>
        <td class="tg-0lax">Floor Plan</td>
        <td class="tg-0lax">Devices</td>
    </tr>
    <tr>
        <td class="tg-0lax">Feedback</td>
        <td class="tg-0lax">Live Chat Support</td>
    </tr>
</table>
</html>

