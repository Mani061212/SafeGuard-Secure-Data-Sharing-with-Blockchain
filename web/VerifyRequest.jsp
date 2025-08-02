
<%@page import="com.action.Queries"%>
<%@page import="java.sql.*"%>
   
          <%String username=(String)session.getAttribute("username");
         String mskey=(String)session.getAttribute("mskey");
         String email=(String)session.getAttribute("email");
         String id=(String)session.getAttribute("id");
              
              
              
             
   
          String mkey=request.getParameter("mkey");
             
          
          
         
              try{

       
 int i=Queries.getExecuteUpdate("insert keyverify values(null,'"+id+"','"+mkey+"','waiting')");
 if(i>0){%>
 <script type="text/javascript">
     window.alert("Reqeust sent Successfully");
     window.location="SearchFile.jsp";
     </script>
            
 <%}else{
%>
 <script type="text/javascript">
     window.alert("Reqeust sent Failed");
     window.location="SearchFile.jsp";
     </script>
            
 <%
     }

   }catch(Exception e)
              {
                  out.println(e);
              }%>