<%--
  Created by IntelliJ IDEA.
  User: brian7989
  Author: Brian Lee
  Date: 7/9/19
  Time: 1:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="keywords" content="CS 2340, Smart Works, Brian Lee">
    <meta name="description" content="Customer Service for Smart Works">
    <meta name="author" content="Brian Lee">
    <meta http-equiv="refresh" content="600">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../res/style/LoginStyle.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Customer Service</title>
</head>
<body>
<div class="header">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="../js/script.js"></script>
</div>

<%--Put this under the header div--%>
<div class="form">

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>

    <form>
        <div class="form-group row">
            <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">Title</label>
            <div class="col-sm-10">
                <input type="email" class="form-control form-control-lg" id="colFormLabelLg"
                       placeholder="Type in your title here.">
            </div>
        </div>
        <div class="form-group row">
            <label for="colFormLabel" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="colFormLabel"
                       placeholder="Type in your email here.">
            </div>
        </div>
        <div class="form-group row">
            <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Problem</label>
            <div class="col-sm-10">
                <input type="email" class="form-control form-control-sm" id="colFormLabelSm"
                       placeholder="Type in the content of problem here.">
            </div>
        </div>
    </form>
</div>
</body>
</html>
