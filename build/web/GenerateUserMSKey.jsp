
<%@page import="java.util.Random"%>
<%@page import="java.security.KeyPairGenerator"%>
<%@page import="java.security.PublicKey"%>
<%@page import="java.security.PrivateKey"%>
<%@page import="java.security.KeyPair"%>
<%@page import="com.action.Queries"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

String id=request.getParameter("id");

try{
  Random r=new Random();
  int ii=r.nextInt(100000-900)+6000;
  
  
    
    String sql="update USER set mskey='"+ii+"' where id='"+id+"'";
    int i=Queries.getExecuteUpdate(sql);
    if(i>0){
     response.sendRedirect("TA_ViewIUsers.jsp?msg=success") ; 
    }else{
        response.sendRedirect("TA_ViewIUsers.jsp?msg=failed") ;
    }

    
}catch(Exception e){
  out.println(e);  
}

%>