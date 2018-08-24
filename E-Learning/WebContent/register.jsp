<%@ page import="java.sql.*,model.Database" %> 
 
<%
String uname=request.getParameter("uname");
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String pass2=request.getParameter("pass2");

Statement st=null;
Connection con=null;
ResultSet rs=null;
		try
		{
			String t=(String)session.getAttribute("true");
			
			
				con = Database.dataConnection();
				st=con.createStatement();
				if(pass.equals(pass2))
				{
					st.executeUpdate("insert into login(uname,name,pass)values('"+uname+"','"+name+"','"+pass+"')");	
				}
				else
				{
					%>
		    		<script>
		    			alert('check your password');
		    		</script>
		    		<% 
					
				}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}


%>


<!DOCTYPE html>
<html>
<!-- <script>
function validate(){
if(document.f.pass2.value!=document.f.pass.value){
alert(" Password should be same! Re-enter confirm-password!");
document.f.confirm.value="";

return false;
}

return true;
}
</script> -->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>MaterialAdminLTE 2 | Registration Page</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
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
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition login-page" style="background-image: url(img/bg-img/bg1.jpg);background-size:120%;">

<div class="register-box">
  <div class="register-logo">
          <span class="logo-lg"><b>E-Learning</b></span>

  </div>

  <div class="register-box-body">
    <p class="login-box-msg">Register a new membership</p>
    
    <form  name="f" method="POST" action="register.jsp" onsubmit="return validate();">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" name="uname"  placeholder="User Name" required>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>

      </div>
      <div class="form-group has-feedback">
        <input type="text" class="form-control" name="name" placeholder="Name" required>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" name="pass" placeholder="Password" required>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" name="pass2" placeholder="Retype Password" required="">
        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
      </div>
      
      <div class="row">
        <div class="col-xs-7">
          <div class="checkbox">
            
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-5">
          <button type="submit" class="btn btn-primary btn-raised btn-block">Register</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

    

    <a href="login.jsp" class="text-center">I already have a membership</a>
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 2.2.3 -->
<script src="jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- Material Design -->
<script src="js/material.min.js"></script>
<script src="/js/ripples.min.js"></script>
<script>
    $.material.init();
</script>
</body>
</html>
