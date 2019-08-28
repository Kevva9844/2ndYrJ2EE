<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Level"%>
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
    University Question
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
          
          <li class="active ">
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
          <li>
            <a href="Uaddevent.jsp">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>Add Event</p>
            </a>
          </li>
          <li>
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
            <a class="navbar-brand" href="#">Q & A</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="panel-header panel-header-sm">
      </div>
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="title">Questions and Answers</h5>
                <p class="category"><hr>
                        <table align="center" cellpadding="10" cellspacing="10" border="0" style="width:100%;">
              
                            <%
                                 
                                java.sql.Connection connection = null;

                                try
                                    {
                                        String driverName = "com.mysql.jdbc.Driver";
                        String connectionUrl = "jdbc:mysql://localhost:3306/";
                        String dbName = "javaeefinalproject";
                        String userId = "root";
                        String password = "";
                        
                        Class.forName(driverName);
                        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);

                                        PreparedStatement pst = connection.prepareStatement(" SELECT * FROM question order by id desc");
                                        ResultSet rs = pst.executeQuery();
                                        while(rs.next())
                                    {
                            %>

                            <tr>

                                <td style="border-bottom: 3px solid #F80000;padding-top: 25px; width: 1000px"><ul><li><a style="color: black;" href="universityanswer.jsp?id=<%=rs.getString("id")%>" ><%= rs.getString("title") %></a></li></ul></td>
                                <td> <i style="padding-right: 60px;">posted by : <%=rs.getString(5)%></i></td>
                            </tr>
                              <% 
                                    }

                                    }  
                                catch (Exception e) 
                                    {
                                        e.printStackTrace();
                                    }
                              %>
                        </table>
                  
                </p>
              </div>
              <div class="card-body all-icons">
                <div class="row">
                  
        
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
                              <%
      try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaeefinalproject","root","");
        Statement smt=con.createStatement();
        String u1 =(String)session.getAttribute("uusername");
        
        String s1="select * from university where username='"+u1+"'";
        ResultSet rs=smt.executeQuery(s1);
        while(rs.next())
        {%> 
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="title">Ask Your Question</h5>
                <p class="category"><hr>
                         <!-- form login -->
                         <form action="AddQuestion3" method="post">
                        <form class="margin-top-40"  style="margin-left: 30px;" >
               
                    <label style="color: #C93535;" >Question Title</label>
                  <input type="text" placeholder="Place your title here" class="form-control" name="title" style="width: 97%;">
        
                  <label style="color: #C93535;">Tags</label>
                  <input type="text" placeholder="Place your tags here" class="form-control" name="tags" style="width: 97%;">
    
                  <label style="color: #C93535;">Posted By</label>
                  <input type="text" class="form-control" name="posted_by" readonly="readonly" style="width: 97%;" value="<%=rs.getString(1)%>">

                  <label style="color: #C93535;">Question Detials</label>
                  <textarea cols="12" rows="12" placeholder="Post Your Question Details Here....." name="question" class="form-control" style="width: 97%;"></textarea>
              
              
                  
              
                  <p style="text-align: center"><button class="btn btn-danger" value="submit"  type="submit"> Submit </button></p>
               <!-- <button class="btn btn-primary pull-right" value="reset">Reset</button>-->
              
<%}  %>
   <% }catch(Exception e){}%>

              </form>
                         
              <!-- form login -->
                 
                </p>
              </div>
              <div class="card-body all-icons">
                <div class="row">
                  
        
                </div>
              </div>
            </div>
          </div>
        </div>
      </div> 
                        
      <footer class="footer">
        <div class="container-fluid">
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