<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Date: 7/1/19
  Time: 1:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<html>
<head>
    <title> Welcome Screen </title>
    <meta charset="UTF-8"/>
    <meta name="keywords" content="CS 2340, Smart Works, Albert Xing">
    <meta name="description" content="Welcome screen for SmartWorks">
    <meta name="author" content="Albert Xing">
    <meta http-equiv="refresh" content="600">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="res/style/WelcomeStyle.css" rel="stylesheet">
</head>
<body>
<div class="header">

    <div class="logo">
        <a href="WelcomeScreen.html"><img src="res/images/SmartWorks1.1.png" alt="SmartWorks Logo" width="200" ;
                                          height="100"></a>  <!-- Logo -->
    </div>

    <ul class="menu">

        <li class="dropdown">
            <span>Features▾</span>
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

<!-- Slideshow container -->
<div class="slideshow-container">

    <!-- Full-width images with number and caption text -->
    <div class="mySlides fade">
        <div class="numbertext">1 / 3</div>
        <img src="res/images/Cleaning.jpg" style="width:100%">
        <div class="text">Cleaning</div>
    </div>

    <div class="mySlides fade">
        <div class="numbertext">2 / 3</div>
        <img src="res/images/FloorPlan.jpg" style="width:100%">
        <div class="text">Floor Plan</div>
    </div>

    <div class="mySlides fade">
        <div class="numbertext">3 / 3</div>
        <img src="res/images/Alarm.jpg" style="width:100%">
        <div class="text">Alarm System</div>
    </div>

    <!-- Next and previous buttons -->
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
    <span class="dot" onclick="currentSlide(1)"></span>
    <span class="dot" onclick="currentSlide(2)"></span>
    <span class="dot" onclick="currentSlide(3)"></span>
</div>

<script>
    var slideIndex = 1;
    showSlides(slideIndex);

    // Next/previous controls
    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    // Thumbnail image controls
    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        if (n > slides.length) {
            slideIndex = 1
        }
        if (n < 1) {
            slideIndex = slides.length
        }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
    }
</script>
</body>
</html>
