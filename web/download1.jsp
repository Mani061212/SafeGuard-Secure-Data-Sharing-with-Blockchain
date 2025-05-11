
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    String fname =(String)session.getAttribute("filename");
   
    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from request where filename='" + fname + "'");
        if (rs.next()) {
            response.sendRedirect("download?" + fname + "");
        } else {
            response.sendRedirect("UserHome.jsp?dmsg=success");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>
