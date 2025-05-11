
<%@page import="com.action.Dbconnection"%>
<%@page import="java.sql.*"%>
   
          <%
         String username=(String)session.getAttribute("username");
         String mskey=(String)session.getAttribute("mskey");
         String email=(String)session.getAttribute("email");
         String id=(String)session.getAttribute("id");
          
          String fid=request.getParameter("fid");
          String fname=request.getParameter("fname");
          String owner=request.getParameter("owner");
          
          
          
          
              try{
	Connection con=Dbconnection.getConnection();
        Statement s=con.createStatement();
            
	Statement st=con.createStatement();
 int i=st.executeUpdate("insert into request values(null,'"+owner+"','"+id+"','"+username+"','"+fid+"','"+fname+"','waiting','waiting','waiting','waiting','waiting','waiting','waiting')");
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