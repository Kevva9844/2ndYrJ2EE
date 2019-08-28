<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="dashboard/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="dashboard/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Industry View Job
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
            <a href="Iuserprofile.jsp">
              <i class="now-ui-icons users_single-02"></i>
              <p>User Profile</p>
            </a>
          </li>
          <li >
            <a href="Iaddjob.jsp">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>Add Job</p>
            </a>
          </li>
          <li class="active ">
            <a href="Iviewjob.jsp">
              <i class="now-ui-icons text_caps-small"></i>
              <p>View Jobs</p>
            </a>
          </li>
          <li>
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
            <a class="navbar-brand" href="#">Add Jobs</a>
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
          
          <%
              try{
                    Connection connection = null;
                    Class.forName("com.mysql.jdbc.Driver");
                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaeefinalproject", "root", "");
                    PreparedStatement pst = connection.prepareStatement("SELECT * FROM job order by id desc");
                    ResultSet rs = pst.executeQuery();
                    while (rs.next())
                    {
                        String imgName = rs.getString("imgName");
                        String title = rs.getString("title");
                        String companyName= rs.getString("companyName");
                        int id = rs.getInt("id");
            %>
          
            <div class="col-md-4">
              <div class="container">
                  <img src="images/jobimages/<%= imgName%>" alt="<%= imgName%>" class="image" style="height: 200px; width: 100%;padding-top: 25px;">
                  <div class="middle">
                        <div class="text"><b><%=title%></b><br><%=companyName%> <br> <a href="Idisplayjobdetails.jsp?id=<%=id%>" style="color: black;">View Details</a></div>
                 </div>
                  
              </div>
          </div>
                    
            <%

                        }

                    }
                    catch (Exception ex)
                    {

                    }


                %> 
          
          
      </div>
      
      
      <br><br><br>
      
      <div class="row">
          
          <div class="col-md-4">
              <div class="container">
              
                  <div class="middle">
                        <div class="text">Overlay</div>
                 </div>
                  
              </div>
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