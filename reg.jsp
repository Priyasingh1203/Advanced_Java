<%@page import="java.sql.*" %>
<%
String name = request.getParameter("name");
String email= request.getParameter("email");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Db","root","root");
Statement stmt= con.createStatement();
int i= stmt.executeUpdate("insert into register(name,email)values('"+name+"','"+email+"')");
if(i>0)
{
out.print("Registered");
}
else
{
out.print("Not Registered");
}
}
catch(Exception e)
{
System.out.println(e);
}
%>

