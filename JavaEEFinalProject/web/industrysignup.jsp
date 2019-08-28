
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Industry Signup</title>
<link rel="stylesheet" href="form.css" type="text/css">
    </head>
    <body><br><br><br><br>
    <br><br><br>
        <form action="Iregvalidate.jsp" method="POST">
            <table>
                <div class="body-content">
  <div class="module">
    <h1>Create an account</h1>
    <form class="form" enctype="multipart/form-data" autocomplete="off">
      <div class="alert alert-error"></div>
      <input type="text" placeholder="User Name" name="iusername" required />
      <input type="email" placeholder="Email" name="iemail" required />
      <input type="password" placeholder="Password" name="ipassword" autocomplete="new-password" required />
      <input type="text" placeholder="Industry Name"name="industryname"autocomplete="industryname" required/>
     
      <input type="submit" value="Register" name="register" class="btn btn-block btn-primary" />
              
     <br><br><br><br>              
        <span>
  <p class="message">Already Have an Account ? <a href="industrylogin.jsp"> CLick Here </a></p></span>                  
                </tr>
            </table>
        </form>
    </body>
</html>
