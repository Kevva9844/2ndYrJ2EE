<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="dashboard/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="dashboard/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Industry Add Event
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="dashboard/assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="dashboard/assets/css/now-ui-dashboard.css?v=1.3.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="dashboard/assets/demo/demo.css" rel="stylesheet" />
  <style>

		body{
			
			background-image: url("Images_background\eventsimg.jpg");
                        
			margin: 0;
			padding: 0;
			background-size: cover;
			height: 100vh;
			font-style: inherit;
			/* background-repeat: no-repeat;*/
  			background-attachment: fixed;

			

		}
		
		/*#header
		{
			height: 100px;
			width:250px;
			align:left;
			background-color: red;
		}*/

		#divForm
		{
			height: 650px;
			width: 600px;
			text-align: center;
			padding: 20px 20px 20px 20px;
			background-color: black;
			opacity: 0.8;
			float: left;
			border-radius: 20px;
			position: absolute;
			top: 50%;
			left: 50%;
			transform:translate(-50%,-50%);
			
		}
		
		#divForm a
		{
			text-decoration: underline;
			background-color: black;
			

		}
		input[type=text],input[type=file],input[type=date]
		 {
		 	color: white;
 			 width: 100%;
  			padding: 12px 20px;
 			 margin: 8px 0;
 			 display: inline-block;
 			/* border: 1px solid #ccc;*/
 			 border:2px solid #e9eaea;
 			 border-radius: 10px;
  			box-sizing: border-box;
  			background-color: black;
  			font-size: 12px;

		}
		input[type=submit],input[type=reset],input[type=button]
		{
			border-radius: 10px;
                        height: 30px;
                        width: 80px;
  			font-size: 12px;
		}

		
 		input[type=submit]:hover,input[type=reset]:hover
 		{
		cursor: pointer;
		color: red;
		transition: color 0.75s;
		}
		input[type=button]:hover
 		{
		cursor: pointer;
		color: #6C3483  ;
		transition: color 0.75s;
		}
                textarea
		{
                        background-color: black;
			border-radius: 10px;
                        
                        color: white;
		}
                h3{
                    color:white;
                }
                table,tr,td
                {
                    text-align: left;
                     padding: 15px;
                     color: white;
                  /* cellpadding:"10" ;
                    align:center ;
                   color: white;*/
                    
                }


	</style>
</head>

<body class="">
     <% try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaeefinalproject","root","");
        Statement smt=con.createStatement();
        String u1 =(String)session.getAttribute("iusername");
        if (u1==null){
            response.sendRedirect("firstpage.jsp");
        }
       }catch(Exception e){}
     %>
  <div class="wrapper ">
    <div class="sidebar" data-color="orange">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="#" class="simple-text logo-mini">
          TP
        </a>
        <a href="#" class="simple-text logo-normal">
          The Portal
        </a>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
          <li>
            <a href="industryquestion.jsp">
              <i class="now-ui-icons education_atom"></i>
              <p>Forum</p>
            </a>
          </li>
          <li>
            <a href="Uuserprofile.jsp">
              <i class="now-ui-icons users_single-02"></i>
              <p>User Profile</p>
            </a>
          </li>
          <li>
            <a href="Iaddjob.jsp">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>Add Job</p>
            </a>
          </li>
          <li>
            <a href="Iviewjob.jsp">
              <i class="now-ui-icons text_caps-small"></i>
              <p>View Jobs</p>
            </a>
          </li>
          <li class="active ">
            <a href="Iaddevent.jsp">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>Add Event</p>
            </a>
          </li>
          <li>
            <a href="Iviewevent.jsp">
              <i class="now-ui-icons text_caps-small"></i>
              <p>View Event</p>
            </a>
          </li>
          <li class="active-pro">
            <a href="logout.jsp">
              <i class="now-ui-icons arrows-1_cloud-download-93"></i>
              <p>Logout</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel" id="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#">Add Events</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="panel-header panel-header-lg">
        <canvas id="bigDashboardChart"></canvas>
      </div>
      <div class="content">
        <div class="row">
          <div id="divForm">
            <form method="post" action="sendData4" enctype='multipart/form-data'>
			
			<h3>ADD YOUR EVENT</h3>
                        
                        <table ><!--cellpadding="10" align="center" style=" color: white">-->
				
                            
				<tr>
					<td>Event Title</td>
					<td><input type="text" name="title" placeholder="enter event" required/></td>
				</tr>
				<tr>
					<td>Description</td>
					<td><textarea rows="3" cols="50" name="description" placeholder="enter your description here!" required/></textarea>
						</td>
						<!--<input type="text" name="description" placeholder="enter your description" required/>-->
				</tr>
				<tr>
					<td>Date</td>
					<td><input type="Date" name="date" placeholder="enter event" required/></td>
				</tr>
				<tr>
					<td>Choose Image </td> 
					<td><input type="file" name="photo" accept="image/*" required /></td>
					
				</tr>
				<tr>
					<td>Contact No</td> 
					<td><input type="text" name="contactNo" placeholder="enter 10 digits" pattern="[0-9]{10}" required/></td>
					
				</tr>

				<tr>
					
					<td><input type="button" name="back" value="back"><!--link this button to dashboard--</td><!--link this button to events page-->
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="submit" name="s" value="submit">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            
                                            <input type="reset" name="r" value="reset">
                                            </td>
				</tr>
                               
                                
				
                               
			</table>
	

</form>
        </div>
        
             
            </div>
          </div>
          
      <footer class="footer">
          <div class="copyright" id="copyright">
            &copy;
            <script>
              document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
            </script>, Designed by
            <a href="#" target="_blank">Group 37</a>. Coded by
            <a href="#" target="_blank">Group 37</a>.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="dashboard/assets/js/core/jquery.min.js"></script>
  <script src="dashboard/assets/js/core/popper.min.js"></script>
  <script src="dashboard/assets/js/core/bootstrap.min.js"></script>
  <script src="dashboard/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="dashboard/assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="dashboard/assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="dashboard/assets/js/now-ui-dashboard.min.js?v=1.3.0" type="text/javascript"></script>
  <!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="dashboard/assets/demo/demo.js"></script>
</body>

</html>