
<%@page import="com.action.Dbconnection"%>
<%@page import="java.sql.*"%>
   
          <%
           
          String rid=request.getParameter("id");
          
          
          
          
              try{
	Connection con=Dbconnection.getConnection();
        Statement s=con.createStatement();
            
	Statement st=con.createStatement();
 int i=st.executeUpdate("update request set owner_auth='Pending' where id='"+rid+"'");
 if(i>0){%>
 <script type="text/javascript">
     window.alert("Owner authenticity Request Sent to CSP");
     window.location="SP_ViewRequest.jsp";
     </script>
            
 <%}else{
%>
 <script type="text/javascript">
     window.alert("Reqeust sent Failed");
     window.location="SP_ViewRequest.jsp";
     </script>
            
 <%
     }
    }catch(Exception e)
              {
                  out.println(e);
              }%>