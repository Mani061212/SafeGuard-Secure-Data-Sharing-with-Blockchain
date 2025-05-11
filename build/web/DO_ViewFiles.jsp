
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%@page import="java.util.Random"%>
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
                   <li><a href="OwnerHome.jsp">HOME</a></li>
                 <li><a href="Upload.jsp">Upload</a></li>
                 <li><a href="DO_ViewFiles.jsp"  class="current">View Files</a></li>
                 <li><a href="DO_ViewRequest.jsp">View Request</a></li>
		 <li><a href="DataOwner.jsp">logout</a></li>
                  
                  
                   

            </ul>    	
		</div> <!-- end of menu -->
    
    </div>  <!-- end of header -->
</div>
<div id="templatemo_content_wrapper">
	
	<br />
        <%String username=(String)session.getAttribute("username");
         String mskey=(String)session.getAttribute("mskey");
         String email=(String)session.getAttribute("email");
         String id=(String)session.getAttribute("id");
         
%>
<center>
<h3>View All Uploaded Files</h3>

	<table width="1000" border="0">
   <%@page import="com.action.Queries"%>
<%@page import="java.sql.ResultSet"%>
<center>
        <table border="1">
            <tr>
                <th>FileName</th> <th>File Data</th> <th>Cipher Data</th><th>Date</th> 
            </tr>
           <%try{
               ResultSet r=Queries.getExecuteQuery("select * from file  where owner='"+id+"'");
               while(r.next()){
                
                 %>
                 <tr>
                     <td><%=r.getString("filename")%></td>
                     <td><textarea cols="50" rows="10"><%=r.getString("filedata")%></textarea></td>
                     <td><textarea cols="50" rows="10"><%=r.getString("cipher")%></textarea></td>
                     <td><%=r.getString("date")%></td>
                    
                    
                 </tr>
                 
                 <%
               }
               
           }catch(Exception e){
               System.out.println(e);
}%>
            
</table>

        </center>
            






<script type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
                
                //var filename = fileToLoad.files.item[0].name;
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
               
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>
</html>

