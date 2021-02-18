<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<%@include file="bootstrap/bootstrap.jsp"%>
</head>
<body>
<div class="container-fluid">
	<div style="box-shadow:0 4px 20px 0px rgba(0, 0, 0, 0.14);">
		<center><h1 style="color: #CCCCCC;font-family: sans-serif;font-weight: bold;padding-left: 200px;">Admin Panel</h1></center>
		<a href="controller.jsp?page=logout" class="btn btn-danger" style="float:right;color:white">Logout</a>
	</div>

	<%
	if(session.getAttribute("userStatus")!=null){
					if(session.getAttribute("userStatus").equals("1")){
	%>
	
	<%
		if(request.getParameter("pagepart").equals("1")){
	%>
		<jsp:include page="accounts.jsp"></jsp:include>
	
	<%
		}	else if(request.getParameter("pagepart").equals("2")){
	%>
		<jsp:include page="courses.jsp"></jsp:include>
	
	<%
		}	else if(request.getParameter("pagepart").equals("3")){
	%>
		<jsp:include page="questions.jsp"></jsp:include>
	<%
		}   else if(request.getParameter("pagepart").equals("4")){
	%>
		<jsp:include page="showall.jsp"></jsp:include>
	<%
		} else{
	%>
	 <jsp:include page="profile.jsp"/>
            
    <%
     }
    %>
	<%
      }else response.sendRedirect("login.jsp");
      }else response.sendRedirect("login.jsp");
    %>

	

</div>
</body>
</html>