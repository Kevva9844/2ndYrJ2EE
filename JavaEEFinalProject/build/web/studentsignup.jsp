
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Signup</title>
<link rel="stylesheet" href="form.css" type="text/css">
    </head>
    <body><br><br><br><br>
    <br><br><br>
        <form action="Sregvalidate.jsp" method="POST">
            <table>
                <div class="body-content">
  <div class="module">
    <h1>Create an account</h1>
    <form class="form" enctype="multipart/form-data" autocomplete="off">
      <div class="alert alert-error"></div>
      <input type="text" placeholder="User Name" name="susername" required />
      <input type="email" placeholder="Email" name="semail" required />
      <input type="password" placeholder="Password" name="spassword" autocomplete="new-password" required />
      <input type="text" placeholder="First Name" name="sfirstname" required />
      <input type="text" placeholder="Last Name" name="slastname" required />
      <input type="text" placeholder="University Name" name="suniversityname" required/>
      <input type="text" placeholder="Degree Programe" name="sdegree" required/>
       <input type="text" placeholder="Batch"name="sbatch" required/>
     
      <input type="submit" value="Register" name="register" class="btn btn-block btn-primary" />
              
     <br><br><br><br>   <span>
  <p class="message">Already Have an Account ? <a href="studentlogin.jsp"> CLick Here </a></p></span>             
                          
                </tr>
            </table>
        </form>
    </body>
</html>
