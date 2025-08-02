

<%@page import="com.action.decryption"%>
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
                  <li><a href="UserHome.jsp">Home</a></li>
                  <li><a href="SearchFile.jsp">Search File</a></li>
                  <li><a href="ViewResponse.jsp" class="current">View Response</a></li>
                  <li><a href="U_ViewDownload.jsp">Download</a></li>
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
<br />

       
                    <center>
<%@page import="com.action.Queries"%>
<%@page import="com.action.decryption"%>
<%@page import="com.action.Dbconnection"%>
<%@page import="java.sql.*"%>
   
          <%
         String username=(String)session.getAttribute("username");
         String mskey=(String)session.getAttribute("mskey");
         String email=(String)session.getAttribute("email");
         String id=(String)session.getAttribute("id");
          
          String fid=request.getParameter("fid");
          String fname=request.getParameter("fname");
          String rid=request.getParameter("rid");
          String pkey=request.getParameter("pkey");
         
          %>
           <center>
                       
          
          
          <%
              try{
	Connection con=Dbconnection.getConnection();
    	Statement st=con.createStatement();
 ResultSet i=st.executeQuery("select * from request where u_status='Processed' and id='"+rid+"' and fid='"+fid+"' and re_enckkey='"+pkey+"'");
 if(i.next()){
          
          String re_encfile=i.getString("re_encfile");
        
    long start=System.nanoTime();
        decryption d=new decryption();
        String data=d.decrypt(re_encfile, pkey);
        
        
        String data2=d.decrypt(data, pkey);
        
        session.setAttribute("data",data2);

    long end=System.nanoTime();
    
    long total=end-start;
    
   Queries.getExecuteUpdate("insert into dec_time values('"+fname+"','"+total+"')");
   
            %>
            <h3>File Data</h3>
  <table border="1" width="400">
                        <tr>
                            <th>File Id</th><td><input type="text" name="id" value="<%=fid%>" required=""></td>
                        </tr>
                        <tr>
                            <th>File Name</th><td><input type="text" name="fname" value="<%=fname%>" required=""></td>
                        </tr>
                         <tr>
                             <th>File Data</th><td><textarea cols="40" rows="10"><%=data2%></textarea></td>
                        </tr>
                        <tr>
                             <th></th><td><a href="Download.jsp?fid=<%=fid%>&fname=<%=fname%>">Download</a></td>
                        </tr>
  </table>
 <%}else{
Queries.getExecuteUpdate("insert into attacker values(null,'"+username+"','"+fname+"',now())");
%>
 <script type="text/javascript">
     window.alert("Verification Failed...!!");
     window.location="ViewResponse.jsp";
     </script>
            
 <%
     }
    }catch(Exception e)
              {
                  out.println(e);
              }%>
              </div> <!-- end of content wrapper -->



</html>

              