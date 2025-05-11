
<%@page import="com.action.Queries"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 String username=(String)session.getAttribute("username");
         String mskey=(String)session.getAttribute("mskey");
         String email=(String)session.getAttribute("email");
         String id=(String)session.getAttribute("id");
         

String fid=request.getParameter("fid");
String fname=request.getParameter("fname");
String data=(String)session.getAttribute("data");

Queries.getExecuteUpdate("insert into download values(null,'"+id+"','"+username+"','"+fname+"',now())");


response.setHeader("Content-Disposition", "attachment;filename=\"" + fname + "\"");
out.write(data);

%>

