
<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
String pass=null,uid=null;

String a = request.getParameter("user");
String b= request.getParameter("pass");
String c= request.getParameter("admincode");
String name="admin";

try
{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();

String sss1 = "select * from admin where username='"+a+"' && password='"+b+"'";
ResultSet rs1=st1.executeQuery(sss1);
if(rs1.next())
{
    session.setAttribute("username",a);
%>
<script type="text/javascript">
    window.alert("Publisher Login Sucess");
    window.location="PublisherHome.jsp";
    </script>
<%
}
else
{
response.sendRedirect("AdminLogin.jsp?message=fail");
}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}



%>
