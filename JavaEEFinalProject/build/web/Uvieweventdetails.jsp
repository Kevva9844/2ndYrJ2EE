<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
    University View Event Details
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
.container {
  position: relative;
  width: 50%;
}

.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.container:hover .image {
  opacity: 0.3;
}

.container:hover .middle {
  opacity: 1;
}

.text {
  background-color: #4CAF50;
  color: white;
  font-size: 16px;
  padding: 16px 32px;
}

	
		body{
			
			background-image: url("event_bgImage.jpg");
                        
                       
			margin: 0;
			padding: 0;
			/*background-size: cover;*/
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
			background-color: black ;
                        font-family: "Times New Roman", Times, serif;
			opacity: 0.7;
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
                        color: black;
                        font-weight: bold;
			

		}
		input[type=text],input[type=file],input[type=date]
		 {
                     
                        background-color: black ;
		 	color: white;
 			 width: 100%;
  			padding: 12px 20px;
 			 margin: 8px 0;
 			 display: inline-block;
 			/* border: 1px solid #ccc;*/
 			 border:2px solid #e9eaea;
 			 border-radius: 10px;
  			box-sizing: border-box;
  			/*background-color: black;*/
                        font-weight: bold;
  			font-size: 12px;

		}
                textarea{
                    background-color: black;
                        font-weight: bold;
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
                    font-weight: bold;
                }
                table,tr,td
                {
                    text-align: left;
                     padding: 15px;
                     color: white;
                     font-weight: bold;
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
        String u1 =(String)session.getAttribute("uusername");
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
            <a href="universityquestion.jsp">
              <i class="now-ui-icons education_atom"></i>
              <p>Forum</p>
            </a>
          </li>
          <li>
            <a href="universitycalendar.jsp">
              <i class="now-ui-icons location_map-big"></i>
              <p>Calendar</p>
            </a>
          </li>
          <li>
            <a href="Uuserprofile.jsp">
              <i class="now-ui-icons users_single-02"></i>
              <p>User Profile</p>
            </a>
          </li>
          <li >
            <a href="Uaddevent.jsp">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>Add Event</p>
            </a>
          </li >
          <li class="active ">
            <a href="Uviewevent.jsp">
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
            <a class="navbar-brand" href="#">View Events</a>
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
            <form method="post" action="sendData" enctype='multipart/form-data'>
			
			<h3>Event Details</h3>
                        
                        <table ><!--cellpadding="10" align="center" style=" color: white">-->
                            
                            <%
                   java.sql.Connection connection = null;
                   
        
                    try
                    {
                        int id = Integer.valueOf(request.getParameter("id"));
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaeefinalproject", "root", "");
                        PreparedStatement pst = connection.prepareStatement(" SELECT * FROM event where id = '"+id+"' ");
                        ResultSet rs = pst.executeQuery();
                        while(rs.next())
                        {
                            String title=rs.getString("title");
                            String description = rs.getString("description");
                            String date = rs.getString("date");
                            String imgName =rs.getString("imgName");
                            String contact_no = rs.getString("contact_no");
                            int qid = rs.getInt("id");
                            request.setAttribute("description", description);
                            request.setAttribute("title", title);
                            request.setAttribute("contact_no", contact_no);
                            request.setAttribute("date", date);
                            request.setAttribute("imgName", imgName);
                            session.setAttribute("qid", qid);
                        }
                    } 

                    catch (SQLException ex) 
                    {
                        
                    }
                %>
				
                               <tr>
                                   
                                       <img src="images/${imgName}" style="height: 150px;width: 150px;">
					
				</tr>
				<tr>
					<td>Event</td>
                                        <td><input type="text" name="title" required value="${title}" readonly="readonly"/></td>
				</tr>
				<tr>
					<td>Details</td>
					<td><textarea rows="3" cols="50" name="description"  required readonly="readonly"/>${description}</textarea>
						</td>
						<!--<input type="text" name="description" placeholder="enter your description" required/>-->
				</tr>
				<tr>
					<td>Date:</td>
					<td><input type="text" name="date"  required value="${date}" readonly="readonly"/></td>
				</tr>
				
				<tr>
					<td>For Further information Contact:</td> 
					<td><input type="text" name="contactNo"  pattern="[0-9]{10}" readonly="readonly" required value="${contact_no}"/></td>
					
				</tr>

				
                               
                                
				
                               
			</table>
	

</form>
          
                    
           
          
          
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