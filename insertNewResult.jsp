<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String rollno=request.getParameter("rollno");
String sub1=request.getParameter("sub1");
String sub2=request.getParameter("sub2");
String sub3=request.getParameter("sub3");
String sub4=request.getParameter("sub4");
String sub5=request.getParameter("sub5");
String sub6=request.getParameter("sub6");
String sub7=request.getParameter("sub7");
String sub8=request.getParameter("sub8");

try{
    Connection con=ConnectionProvider.getCon();
      Statement stmt=con.createStatement();
      stmt.executeUpdate("insert into resultrecords values('"+rollno+"','"+sub1+"','"+sub2+"','"+sub3+"','"+sub4+"','"+sub5+"','"+sub6+"','"+sub7+"','"+sub8+"')");
      response.sendRedirect("adminHome.jsp");
}
catch(Exception e){
    out.println(e);
}
%>