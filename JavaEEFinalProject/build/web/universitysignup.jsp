<%-- 
    Document   : createuniversity
    Created on : 05-Apr-2019, 10:45:55
    Author     : Nathasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>University Signup</title>
<link rel="stylesheet" href="form.css" type="text/css">
    </head>
    <body><br><br><br><br>
    <br><br><br>
        <form action="Uregvalidate.jsp" method="POST">
            <table>
                <div class="body-content">
  <div class="module">
    <h1>Create an account</h1>
    <form class="form" enctype="multipart/form-data" autocomplete="off">
      <div class="alert alert-error"></div>
      <input type="text" placeholder="User Name" name="uusername" required />
      <input type="email" placeholder="Email" name="uemail" required />
      <input type="password" placeholder="Password" name="upassword" autocomplete="new-password" required />
      <input type="text" placeholder="University Name" name="uuniversityname" required/>
       
     
      <input type="submit" value="Register" name="register" class="btn btn-block btn-primary" />
      <br><br><br><br>
           <span><p class="message">Already Have an Account ? <a href="universitylogin.jsp"> CLick Here </a></p></span>                
                          
                </tr>
            </table>
        </form>
    </body>
</html>
