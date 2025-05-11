

<%@page import="databaseconnection.databasecon"%>
<%String username=(String)session.getAttribute("username"); %>
<%@page import="java.sql.*"%>
<%@page import="java.util.Random"%>
            <%@page import="venkat.*"%>
            <%String status="activated";
                try{String filename=request.getParameter("filename");
                String email=request.getParameter("email");
                String name=request.getParameter("downloader");
              Random r = new Random();
    int ii = r.nextInt(100000 - 5000) + 5000;
    String k = ii + "";
    String msg ="Name : "+name+"\n\nKey   : "+k;  
	Connection con=databasecon.getconnection();
        Statement s=con.createStatement();
        int i=s.executeUpdate("update request set status='"+status+"',fkey='"+k+"' where filename='"+filename+"'");
        if(i>0){
           %>
          <script type="text/javascript">
     window.alert("sent Successfully");
     window.location="DSA.jsp";
     </script>
        <%}
else{
%>
 <script type="text/javascript">
     window.alert("sent Failed");
     window.location="DSA.jsp";
     </script>
            
 <%
     }
          }catch(Exception e){
        out.println(e);
        }
        %>