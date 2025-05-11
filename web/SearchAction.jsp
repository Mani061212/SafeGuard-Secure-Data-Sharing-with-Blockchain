

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.action.Queries"%>
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
                  <li><a href="index.html">Home</a></li>
                  <li><a href="SearchFile.jsp" class="current">Search File</a></li>
                  <li><a href="ViewResponse.jsp">View Response</a></li>
                  <li><a href="KeyVerification.jsp">Download</a></li>
		  <li><a href="UserLogin.jsp">LogOut</a></li>
              
                  
                   

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
	 <%String username=(String)session.getAttribute("username");
         String mskey=(String)session.getAttribute("mskey");
         String email=(String)session.getAttribute("email");
         String id=(String)session.getAttribute("id");
         
         %>
	<br />

        <center>
         <h3>Searched Result</h3> 
                    <center>
                    <table border="1"  width="400">
                        <tr>
                            <th>File Id:</th> <th>File Name</th> <th>Action</th>
                        </tr>
                    <%
                    String keyword=request.getParameter("keyword");
                   
try{
    Connection con=Dbconnection.getConnection();
    Statement st=con.createStatement();
  ResultSet r=Queries.getExecuteQuery("select * from blockchain where mdata like'%"+keyword+"%'");
  while(r.next()){
    String fid=r.getString("fid");  
    ResultSet rr=st.executeQuery("select * from file where id='"+fid+"'");
    while(rr.next()){
        %>
        <tr>
            <td><%=fid%></td><td><%=rr.getString("filename")%></td><td><a href="RequestAction.jsp?fid=<%=rr.getString("id")%>&fname=<%=rr.getString("filename")%>&owner=<%=rr.getString("owner")%>">Request</a></td>
        </tr>
        
        <%
    }
    
  }
    
    
    
}catch(Exception e){
   out.println(e);
}
                    
                    
                    %>
                    </table>
                    
                    </center>
        </center>

</div> <!-- end of content wrapper -->

<div id="templatemo_footer_wrapper">

<div id="templatemo_footer">
	 
        <div class="cleaner"></div>
  </div> 
</div> <!-- end of footer -->
<body>
</html>

</html>
