  <%@ page import="java.sql.*,model.Database" %>   
<jsp:include page="login.jsp" />  
<% 
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
String u=null;
String p=null;
Statement st=null;
Connection con=null;
ResultSet rs=null;
		try
		{
	con = Database.dataConnection();
	PreparedStatement pst = con.prepareStatement("Select * from login where uname=? and pass=?");
    pst.setString(1, uname);
    pst.setString(2, pass);
    rs = pst.executeQuery();                        
    if(rs.next())           
    {
    		response.sendRedirect("index.jsp");
    }
    	else
    	{
    		%>
    		<script>
    			alert('Username or Password is Incorrect!!!!');
    		</script>
    		<% 
    	}
		}
    		catch (Exception e){
    	  out.print(e);
    		}
    		
		%>
