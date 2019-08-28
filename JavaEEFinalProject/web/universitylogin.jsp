<%-- 
    Document   : universitylogin
    Created on : 05-Apr-2019, 10:39:10
    Author     : Nathasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>University Login</title>
    <link rel="stylesheet" type="text/css" href="login.css">
	
</head>
<body>
	<div class="container">
 
  <div class="login">log in </div>
 	
 

<div class="login-form">
    <form method="post" action="Ulogvalidate.jsp">
    <input type="text" class="input" placeholder="Username" name="uusername" required /><br>
    <input type="password" class="input" placeholder="Password" name="upassword" required /><br>
	<input type="submit" value="Login" name="ulogin" class="btn btn-block btn-primary" />
	<br>
	<span><p class="message">Not an University ? <a href="firstpage.jsp"> Go Back </a></p> <br> <br>
 			
 			<br>
  <p class="message">Not a member? <a href="universitysignup.jsp"> Create Account </a></p></span>
    </form></div>

</body>
</html> 