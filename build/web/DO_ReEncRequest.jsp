

<%@page import="com.action.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%@page import="java.util.Random"%>
<%
    String id=request.getParameter("id");
   
    
    try
    {
        Connection con=Dbconnection.getConnection();
        Statement st=con.createStatement();
        int i=st.executeUpdate("update request set status='proxy' where id='"+id+"'");
        if(i>0)
        {
         %>
         <script type="text/javascript">
             window.alert("Re-Encryption Request Sent Proxy Server");
             window.location="DO_ViewRequest.jsp";
         </script>
         
         <%
     
        } else {
         %>
         <script type="text/javascript">
             window.alert("Re-Encryption Request Sending Failed");
             window.location="DO_ViewRequest.jsp";
         </script>
         
         <%
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>