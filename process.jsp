<%@ page import="java.sql.*" %>

		<%
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String dob=request.getParameter("dob");
	String user=request.getParameter("user");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String password=request.getParameter("password");
	String gender=request.getParameter("gender");
		try
		{
		Connection con= null;
      	Class.forName("oracle.jdbc.driver.OracleDriver");
      	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","surya123");
		String qry ="insert into  register values(?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(qry);
			pstmt.setString(1,fname);
			pstmt.setString(2,lname);
			pstmt.setString(3,dob);
			pstmt.setString(4,user);
			pstmt.setString(5,email);
			pstmt.setString(6,phone);
			pstmt.setString(7,password);
			pstmt.setString(8,gender);
		int sts = pstmt.executeUpdate();
	out.println(sts+ " row inserted successfully");
		}
		catch(Exception e)
		{
		out.print(e);
		e.printStackTrace();
		}
		%>