
<%@page import="com.action.Ftpcon"%>
<%@page import="java.io.FileWriter"%>
<%@page import="jdk.jfr.events.FileWriteEvent"%>
<%@page import="java.io.File"%>
<%@page import="com.action.Queries"%>
<%@page import="com.action.Dbconnection"%>
<%@page import="java.sql.*"%>
<%
String username=(String)session.getAttribute("username");
         String mskey=(String)session.getAttribute("mskey");
         String email=(String)session.getAttribute("email");
         String id=(String)session.getAttribute("id");
         
         
         
	String number=request.getParameter("number");
       
	String fname=request.getParameter("fname");
        String data=request.getParameter("data");
	String cipher=request.getParameter("cipher");
        
	String metadata=request.getParameter("metadata");
        String block=request.getParameter("block");
	
        String hashcode=request.getParameter("hashcode");
        String signature=request.getParameter("signature");
	
	
	
	try
	{

Connection con=Dbconnection.getConnection();
Statement st=con.createStatement();
	
		int i=Queries.getExecuteUpdate("insert into file values(null,'"+id+"','"+fname+"','"+data+"','"+number+"','"+cipher+"',now())");
		if(i>0)
		{
                    File f=new File("C:\\myproject\\"+fname);
                    FileWriter fw=new FileWriter(f);
                    fw.write(cipher);
                    fw.close();
                    Ftpcon ff=new Ftpcon();
                    ff.upload(f, fname);
                   
                    
                ResultSet rr=Queries.getExecuteQuery("select max(id) from file");
                int cc=0;
                while(rr.next()){
                    cc=rr.getInt(1);
                }
                 st.executeUpdate("insert into blockchain values('"+cc+"','"+id+"','"+metadata+"','"+block+"','"+hashcode+"','"+signature+"')");
		
%>
			<script type="text/javascript">
				window.alert("File Uploaded to Cloud Successfully..!!");
				window.location="Upload.jsp";
			</script>
		<%
		}
		else
		{
		%>
			<script type="text/javascript">
				window.alert("File Uploading Failed..!");
				window.location="Upload.jsp";
			</script>
		<%
		}
}catch(Exception e)
	{
	out.println(e);
	}
%>