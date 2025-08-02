

<%@page import="databaseconnection.databasecon"%>
<%String username=(String)session.getAttribute("username");%>

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
    margin-left:300px;
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
                 <li><a href="RequestFile.jsp">Request File</a></li>
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
	
	<br/>
            <%@page import="java.sql.*"%>

          <%String key=request.getParameter("key");
          String filename=request.getParameter("filename");
          
              try{
	Connection con=databasecon.getconnection();
	Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from request where fkey='"+key+"'and username='"+username+"'and filename='"+filename+"'");
        while(rs.next()){
          session.setAttribute("filename",filename);%>
        <script type="text/javascript">
            window.alert("Key Verified Success");
            window.location="download1.jsp";
            </script>
        <%}
%>
        <script type="text/javascript">
            window.alert("Key Verification Failed");
            window.location="KeyVerification.jsp";
            </script>
        <%
	
              }catch(Exception e){
               out.println(e);   
    }%>
           




</div> <!-- end of content wrapper -->
<br><br><br>
<div id="templatemo_footer_wrapper">

<div id="templatemo_footer">
	 
        <div class="cleaner"></div>
  </div> 
</div> <!-- end of footer -->

</html>
