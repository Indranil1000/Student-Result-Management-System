<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.Sql.*"%>
<%
try
{
    String rollno=request.getParameter("rollno");
    Connection con = ConnectionProvider.getCon();
    Statement stmt = con.createStatement();
    ResultSet rs=stmt.executeQuery("select *from studentrecords inner join resultrecords where studentrecords.rollno=resultrecords.rollno and studentrecords.rollno='"+rollno+"'");
    if(rs.next()){
        %>
        <head><link rel="icon" href="favicon.png" type="image/png"></head>
        <title>Student Result Management System</title>
        <img src="logo.png"  align="left" width="150" height="150">
<center><img src="Picture1.png" width="150" height="150">
<img src="Picture2.png" align="right"  width="150" height="150" style="padding-right: 20px;"></center>
   <a href="dgiOneView.html">Back</a>
  <hr class="new1">
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #d8e9e9, #38cf15);
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>institution Name : SVIST</th>
          <th>Course Name : <%=rs.getString(1)%></th>
          <th>Branch Name : <%=rs.getString(2)%></th>
          <th><center>RollNo : <%=rs.getString(3)%></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Name : <%=rs.getString(4)%></th>
          <th>Father Name : <%=rs.getString(5)%></th>
          <th>Gender : <%=rs.getString(6)%></th>
          <th><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="print.png"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>

<head>
<hr class="new1">
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Passing Marks</td>
        <td rowspan="2">Obtained Marks</td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>EC-101</td>
        <td colspan="2">Digital Communication</td>
        <td>Theory</td>
        <td>100</td>
        <td> 40 </td>
        <td><%=rs.getString(8)%></td>
      </tr>
      <tr>
        <td>EC-102</td>
        <td colspan="2">Digital Signal Processing</td>
        <td>Theory</td>
        <td>100</td>
        <td>40</td>
        <td><%=rs.getString(9)%></td>
      </tr>
      <tr>
        <td>EC-103</td>
        <td colspan="2">Embedded System</td>
        <td>Theory</td>
        <td>100</td>
        <td> 40 </td>
        <td><%=rs.getString(10)%></td>
      </tr>
      <tr>
        <td>EC-104</td>
        <td colspan="2">Digital Image & Video Processing</td>
        <td>Theory</td>
        <td>100</td>
        <td> 40 </td>
        <td><%=rs.getString(11)%></td>
      </tr>
      <tr>
        <td>EC-105</td>
        <td colspan="2">Web Technology and OOPs</td>
        <td>Theory</td>
        <td>100</td>
        <td> 40 </td>
        <td><%=rs.getString(12)%></td>
      </tr>
      <tr>
        <td>EC-50</td>
        <td colspan="2">Digital Image & Video Processing Lab</td>
        <td>Practical</td>
        <td>50</td>
        <td>20</td>
        <td><%=rs.getString(13)%></td>
      </tr>
      <tr>
        <td>EC-51</td>
        <td colspan="2">Digital Signal Processing Lab</td>
        <td>Practical</td>
        <td>50</td>
        <td>20</td>
        <td><%=rs.getString(14)%></td>
      </tr>
      <tr>
        <td>EC-52</td>
        <td colspan="2">Digital Communication Lab</td>
        <td>Practical</td>
        <td>50</td>
        <td>20</td>
        <td><%=rs.getString(15)%></td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td>650</td>
        <td>260</td>
        <td><% int sum=rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11)+rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15);out.println(sum);%></td>
      </tr>
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="3"><%out.println((sum*100)/800);%>%</td>
      </tr>
  </table>
    <hr class="new1">
  <center><h6>Note: For any discrepancies or errors in virtual results,kindly notify the college administration,as the university holds responsibility for result accuracy.</h6></center>
  <hr class="new1">
<center><h6>All Right Reserved @ E-Outcome(Indranil Das) :: 2023</h6></center> 
  <hr class="new1">
</body>



<%
    }
        
    


else{
response.sendRedirect("errorDgiOneView.html");
}
}
catch(Exception e){
  
}
%>
