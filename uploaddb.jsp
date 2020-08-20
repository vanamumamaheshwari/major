<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconn.databaseconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
			
		String string =null;
			Connection connection=databaseconnection.getconnection();
			String sqll="select * from timeslot where state=?";
			PreparedStatement pss=connection.prepareStatement(sqll);
			pss.setString(1, "ON");
			ResultSet rss=pss.executeQuery();
			if(rss.next())
			{
				string=rss.getString("pod");
				System.out.println("pod:"+string);
			}
			else
			{
				System.out.println("server not available..");
			}			
			
			String shop=null,company=null,price=null;
			Statement st = null;
			ResultSet rs1=null;
			int iid=0;
			
			long fsz;
			long startTime=0L;
			
			long stopTime=0L;
			
			String s=(String)session.getAttribute("email");
		    System.out.println("emailid: "+s);
			
		    int x1=0;
			if(!(string.equals("")))
			{
				startTime = System.currentTimeMillis();
				System.out.println("startTime:"+startTime);
				ArrayList list = new ArrayList();
				ServletContext context = getServletContext();

				String dirName =context.getRealPath("\\Document");
				System.out.println("file path:"+dirName);
				String paramname=null;
				String file=null;

				java.util.Date now1 = new java.util.Date();
				String date1=now1.toString();
				String DATE_FORMAT1 = "dd-MM-yyyy";
				SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
			    String strDateNew1 = sdf1.format(now1) ;
		 
				File file1 = null;
					MultipartRequest multi = new MultipartRequest(request, dirName,	100 * 1024 * 1024); // 10MB
					Enumeration params = multi.getParameterNames();
					while (params.hasMoreElements()) 
					{
						paramname = (String) params.nextElement();
						
						if(paramname.equalsIgnoreCase("fname"))
						{
							shop=multi.getParameter(paramname);
						}
						if(paramname.equalsIgnoreCase("file"))
						{
							company=multi.getParameter(paramname);
						}
						}
							
					int f = 0;
			Enumeration files = multi.getFileNames();	
			while (files.hasMoreElements()) 
			{
				paramname = (String) files.nextElement();
				if(paramname.equals("d1"))
				{
					paramname = null;
				}
				
				if(paramname != null)
				{
					f = 1;
					price = multi.getFilesystemName(paramname);
					String fPath = context.getRealPath("\\Document\\"+price);
					file1 = new File(fPath);
					fsz=file1.length();
					FileInputStream fs = new FileInputStream(file1);
					
					list.add(fs);
				}		
			}
			        FileInputStream fs1 = null;
		            //name=dirName+"\\Gallery\\"+image;
					
					Connection con=databaseconnection.getconnection();

					PreparedStatement ps=con.prepareStatement("INSERT INTO drive(email,title,fname,file,date) VALUES(?,?,?,?,?)");
					ps.setString(1,s);
					ps.setString(2,shop);
					ps.setString(3,price);
						
		       if(f == 0)
					ps.setObject(4,null);
				else if(f == 1)
				{
					fs1 = (FileInputStream)list.get(0);
					ps.setBinaryStream(4,fs1,fs1.available());
				}	
		       ps.setString(5, strDateNew1);
					x1=ps.executeUpdate();
					stopTime = System.currentTimeMillis();
			}

			long elapsedTime = stopTime - startTime;
			System.out.println("time :"+elapsedTime);
				int xy=(int)elapsedTime;
	
    java.util.Date now = new java.util.Date();
	String date=now.toString();
	String DATE_FORMAT = "HH:mm:ss";
	SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
    String strDateNew = sdf.format(now) ;
    System.out.println("current time :"+strDateNew);
    

    Class.forName("com.mysql.jdbc.Driver");	
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/servers","root","admin");  
    
        
		int random = (int)(Math.random() * 3+ 1);
		System.out.println("vm no:"+random);
		
		System.out.println("pod 1:");
		int ht = (int)(Math.random() * 50 + 1);
		System.out.println("heat of PS 1:"+ht);
		int ht1 = (int)(Math.random() * 50 + 1);
		System.out.println("heat of PS 2:"+ht1);
		
		System.out.println("pod 2:");
		int ht2 = (int)(Math.random() * 50 + 1);
		System.out.println("heat of PS 3:"+ht2);
		int ht3 = (int)(Math.random() * 50 + 1);
		System.out.println("heat of PS 4:"+ht3);
		if(string.equals("pod1"))
		{
			if(ht<=ht1)
			{
				System.out.println("ps1");
				String sql2="insert into ps1(pod,fname,vm,time,heat,dt) values(?,?,?,?,?,?)";
				PreparedStatement ps2=conn.prepareStatement(sql2);
				ps2.setString(1, string);
				ps2.setString(2, price);
				ps2.setInt(3, random);
				ps2.setInt(4, xy);
				ps2.setInt(5, ht);
				ps2.setString(6, strDateNew);
				ps2.execute();
			}
			else
			{
				System.out.println("ps2");
				String sql2="insert into ps2(pod,fname,vm,time,heat,dt) values(?,?,?,?,?,?)";
				PreparedStatement ps2=conn.prepareStatement(sql2);
				ps2.setString(1, string);
				ps2.setString(2, price);
				ps2.setInt(3, random);
				ps2.setInt(4, xy);
				ps2.setInt(5, ht1);
				ps2.setString(6, strDateNew);
				ps2.execute();
			}
		}
		else if(string.equals("pod2"))
		{
			if(ht2<=ht3)
			{
				System.out.println("ps3");
				String sql2="insert into ps3(pod,fname,vm,time,heat,dt) values(?,?,?,?,?,?)";
				PreparedStatement ps2=conn.prepareStatement(sql2);
				ps2.setString(1, string);
				ps2.setString(2, price);
				ps2.setInt(3, random);
				ps2.setInt(4, xy);
				ps2.setInt(5, ht2);
				ps2.setString(6, strDateNew);
				ps2.execute();
			}
			else
			{
				System.out.println("ps4");
				String sql2="insert into ps4(pod,fname,vm,time,heat,dt) values(?,?,?,?,?,?)";
				PreparedStatement ps2=conn.prepareStatement(sql2);
				ps2.setString(1, string);
				ps2.setString(2, price);
				ps2.setInt(3, random);
				ps2.setInt(4, xy);
				ps2.setInt(5, ht3);
				ps2.setString(6, strDateNew);
				ps2.execute();
			}	
		}
		else
		{
			System.out.println("power not in on");
		}
			
		
		if(x1!=0)
		{%>
		<script>
		alert("file upload successfully");
		window.location="upload.jsp";
			</script>
		<% }
		else
		{
			%>
			<script>
			alert("file upload error");
			window.location="upload.jsp";
				</script>
				<%
		}	
			
			
}
catch (Exception eq) 
	{
		out.println(eq.getMessage());
	}
		
	
 %>
</body>
</html>