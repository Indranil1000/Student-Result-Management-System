<%@page import="Project.ConnectionProvider" %> 
<%@page import="java.sql.*"%>
<% 
String course = request.getParameter("course");
String branch = request.getParameter("branch");
String rollno = request.getParameter("rollno");
String name = request.getParameter("name");
String fathername = request.getParameter("fathername");
String gender = request.getParameter("gender");

   try
   {
      Connection con=ConnectionProvider.getCon();
      Statement stmt=con.createStatement();
      stmt.executeUpdate("insert into studentrecords values('"+course+"','"+branch+"','"+rollno+"','"+name+"','"+fathername+"','"+gender+"')");
      response.sendRedirect("adminHome.jsp");
   }
   catch(Exception e)
   {
       
   }



%>