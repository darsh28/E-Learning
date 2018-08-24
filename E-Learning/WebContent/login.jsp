

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="css/AdminLTE.min.css">
  <!-- Material Design -->
  <link rel="stylesheet" href="css/bootstrap-material-design.min.css">
  <link rel="stylesheet" href="css/ripples.min.css">
  <link rel="stylesheet" href="css/MaterialAdminLTE.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>

<body class="hold-transition login-page" style="background-image: url(img/bg-img/bg1.jpg);background-size:120%;">
<div class="login-box">
  <div class="login-logo">
  <h1 style="color: inherit;"><b><i>E-Learning</i></b></h1>
  
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
  
    <p class="login-box-msg">Sign in to start your session</p>

    <form  method="POST" action="logincontrol.jsp">
      <div class="form-group has-feedback">
        <input type="text" name="uname" class="form-control" placeholder="User Name">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password"  name="pass" class="form-control" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-7">
          
        </div>
        <!-- /.col -->
        <div class="col-xs-5">
             <input type="submit" class="btn btn-primary btn-raised btn-block btn-flat" value="Sign In"/>
        </div>
        <!-- /.col -->
      </div>
      
    </form>
  <a href="#">I forgot my password</a><br>
    <a href="register.jsp" class="text-center">Register a new membership</a>
    </div>
    </div>
    <script src="jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- Material Design -->
<script src="js/material.min.js"></script>
<script src="js/ripples.min.js"></script>
<script>
    $.material.init();
    </script>
    </body>
    </html>