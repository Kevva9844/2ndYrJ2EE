
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Industry Login</title>
    <link rel="stylesheet" type="text/css" href="login.css">
	
</head>
<body>
	<div class="container">
 
  <div class="login">log in </div>
 	
 

<div class="login-form">
    <form method="post" action="Ilogvalidate.jsp">
	<input type="text" class="input" placeholder="Username" name="iusername" required /><br>
	<input type="password" class="input" placeholder="Password" name="ipassword" required /><br>
	<input type="submit" value="Login" name="ilogin" class="btn btn-block btn-primary" />
	<br>
	<span><p class="message">Not an Industry ? <a href="firstpage.jsp"> Go Back </a></p> <br> <br>
 			
 			<br>
  <p class="message">Not a member? <a href="industrysignup.jsp"> Create Account </a></p></span>
    </form></div>

</body>
</html> 

