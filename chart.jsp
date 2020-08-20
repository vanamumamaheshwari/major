<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="chart.newchart"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconn.databaseconnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Gusto</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rochester" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="css/tstyle.css">
   
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<div style="width: 100%; height: 100px; background-color: #4286f4; color: white;">
<p align="center" style="font-size: 1.2cm; margin-top: 50px; 
	font-family: 'Rochester', cursive; text-decoration: underline; padding-top: 10px;">An Approach to Balance Maintenance Costs and Electricity Consumption in Cloud Data Centers</p>
</div>

<!-- Navigation
    ==========================================-->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="adhome.jsp" class="page-scroll">Home</a></li>
        <li><a href="udatails.jsp" class="page-scroll">User</a></li>
        <li><a href="upackage.jsp" class="page-scroll">User Package</a></li>
        <li><a href="mcost.jsp" class="page-scroll">Maintenance</a></li>
        <li><a href="ecost.jsp" class="page-scroll">Electricity</a></li>
        <li><a href="chart.jsp" class="page-scroll">Chart</a></li>
        <li><a href="admin.jsp" class="page-scroll">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
<div id="contact" class="text-center">
  <div class="container">
    <div class="section-title text-center">
      
    </div>
    <div id="row" style="height: 500px; ">
    <form action="#">
<table class="tab">   
<tr><td><label style="color: blue;">Select Type:</label></td><td><select name="type" style="color: blue;">
<option value="column">Column Chart</option>
<option value="bar">Bar Chart</option>
<option value="area">Area Chart</option>
<option value="spline">Spline Chart</option>
<option value="pie">Pie Chart</option>
<option value="line">line Chart</option></select></td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<td><input type="submit" value="submit" style="color: blue;" /></td></tr>
<%
List<newchart> list=new ArrayList<newchart>();
String s="";
try
{
	Connection conn=databaseconnection.getconnection();
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery("select email,count(email) as c from drive group by email");
		while(rs.next())
		{	   
	    	String name =rs.getString("email");
	    	System.out.println("$$$$$$$date"+name);
	        int count = rs.getInt("c");
	        System.out.println("$$$$$$$count"+count);
	        newchart gp=new newchart();
	        
	        gp.setName(name);
	        gp.setCount(count);	       
	        list.add(gp);
		}
	    for(Integer i =0;i<list.size(); i++)
	    {
	    	newchart a = list.get(i);
	    	s=s+"{label: \""+a.getName()+"\",y:"+a.getCount()+"},";
	    } 

}
catch(Exception e)
{
	e.printStackTrace();
}
%>    
    </table></form>
     <%
   String type = request.getParameter("type");
   %>
<script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">

window.onload = function () 
{
	var chart = new CanvasJS.Chart("chartContainer", {
	theme: "theme2",//theme1
	title:{text: "Count Of User Uploaded File" },
	animationEnabled: false,   // change to true
	data: [              
	{
	// Change type to "bar", "area", "spline", "pie",etc.
	type: "<%=type%>",
	dataPoints: [
	            <%=s%>
	]
	}
	]
	});
	chart.render();
}
</script>  
<div id="chartContainer" style="height: 500px; width: 900px; margin-left: 100px; position: related;"></div>  
      
    </div>
  </div>
</div>
<!-- Contact Section -->
<div id="footer">
  <div class="container text-center">
   
   
  </div>
</div>
<script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/SmoothScroll.js"></script> 
<script type="text/javascript" src="js/contact_me.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
