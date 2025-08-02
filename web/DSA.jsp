
<%@page import="databaseconnection.databasecon"%>
<%String username=(String)session.getAttribute("username"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Safeguarding the Digital World Data Sharing with Proxy Re-Encryption using Blockchain</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<style type="text/css">
<!--
.style1 {
	color: #00CC00;
	font-weight: bold;
	font-size: 16px;
}
table{
    width:300px;
    
}
-->
</style>
</head>
<body>
<div id="templatemo_header_wrapper">
<!--  Free Web Templates by TemplateMo.com  -->
  <div id="templatemo_header">
    <div id="templatemo_menu">
      		<div id="templatemo_menu_left"></div>
            <ul>
                  <li><a href="index.html" class="current">Home</a></li>
                  <li><a href="Upload.jsp">Upload</a></li>
                  <li><a href="DSA.jsp">DSA</a></li>
				  <li><a href="AdminLogin.jsp">LogOut</a></li>
              
                  
                   

            </ul>    	
		</div> <!-- end of menu -->
    
    </div>  <!-- end of header -->
</div> <!-- end of header wrapper -->

<div id="templatemo_banner_wrapper">
	<div id="templatemo_banner">
	  <div id="templatemo_banner_content">
        	<div class="header_01">Safeguarding the Digital World Data Sharing with Proxy Re-Encryption using Blockchain</div>
      </div>	
    
    	<div class="cleaner"></div>
    </div> <!-- end of banner -->
</div> <!-- end of banner wrapper -->

<div id="templatemo_content_wrapper">
	
	<br />

	

	<table border="1" align="center">
            <h1 align="center">Send Key To User</h1>
            <tr>
            <th>File Name</th>
            <th>Owner</th>
            <th>Send Key</th>
            </tr>
            <%@page import="java.sql.*"%>
          
          <%
              try{
	Connection con=databasecon.getconnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from request where status='waiting'");
        while(rs.next()){
          String email=rs.getString("email");
          String downloader=rs.getString("username");%>
            <tr>
            <td><%=rs.getString("filename")%></td>
            <td><%=rs.getString("owner")%></td>
            <td><a href="UpdateAction.jsp?filename=<%=rs.getString("filename")%>&email=<%=email%>&donwloader=<%=downloader%>">send key</a></td>
         </tr>
            <%}
          }catch(Exception e){
        out.println(e);      
}%>

           
</table>



</div> <!-- end of content wrapper -->
<br><br><br>
<div id="templatemo_footer_wrapper">

<div id="templatemo_footer">
	 
        <div class="cleaner"></div>
  </div> 
</div> <!-- end of footer -->

</html>
