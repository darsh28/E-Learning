<%@ page import="java.sql.*,model.Database" %> 
<jsp:include page="register.jsp" />  
 
<%
String uname=request.getParameter("uname");
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String pass2=request.getParameter("pass2");

Statement st=null;
Connection con=null;
ResultSet rs=null;
		try
		{
			String t=(String)session.getAttribute("true");
			
			
				con = Database.dataConnection();
				st=con.createStatement();
				if(pass.equals(pass2))
				{
					st.executeUpdate("insert into login(uname,name,pass)values('"+uname+"','"+name+"','"+pass+"')");	
				}
				else
				{
					%>
		    		<script>
		    			alert('check your password');
		    		</script>
		    		<% 
					
				}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}


%>