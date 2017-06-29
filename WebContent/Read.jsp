<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.sundar.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./plugins/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src="./plugins/bootstrap.min.js"></script>
<script type="text/javascript" src="./plugins/jquery.2.2.3.min.js"></script>
</head>
<body>
 <% String regno = request.getParameter("regno"); 
 System.out.println(regno);
	try{
		StudentDB s=new StudentDB();
	Student st=s.read(regno);
	if(st.isF())
	{
			out.println(" <div class='jumbotron text-center' style='color:#000080;'><h2>Student Management</h2></div>" + 
					"<table class='table table-striped'" 
					+ "<tr>"
					+ "<th>Register no:</th>"
					+ "<td>"+st.getRegNo()+"</td>"
					+ "</tr>"
					+ "<tr>"
					+ "<th>Name:</th>"
					+ "<td>"+st.getName()+"</td>"
					+ "</tr>"
					+ "<tr>"
					+ "<th>Date of Birth:</th>"
					+ "<td>"+st.getDob()+"</td>"
					+ "</tr>"
					+ "<tr>"
					+ "<th>Department:</th>"
					+ "<td>"+st.getDept()+"</td>"
					+ "</tr>"
					+ "<tr>"
					+ "<th>Email:</th>"
					+ "<td>"+st.getEmail()+"</td>"
					+ "</tr>"
					+ "<tr>"
					+ "<th>Mobile:</th>"
					+ "<td>"+st.getMobile()+"</td>"
					+ "</tr>"
					+ "</table>"
					+ "<a href='./././Index.jsp'> Back</a>"
					+ "</div>" );
	}
	else
	{
		out.println("<html> <p>Invalid register no</p><br>"
			+ "<a href='./Index.jsp'>back</a></html>");
	}
	}catch (Exception e){System.out.println(e);}
 %>
</body>
</html>