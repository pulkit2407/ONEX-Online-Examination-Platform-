<%@page import="entities.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
    <jsp:useBean id="pDAO" class="database.adduser" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accounts</title>
<%@include file="bootstrap/bootstrap.jsp"%>
</head>
<style>
	h2,h4 {color: white;}
	.title
	{
		background: linear-gradient(60deg, #ffa726, #fb8c00);
		box-shadow: 0 4px 20px 0px rgba(0, 0, 0, 0.14), 0 7px 10px -5px rgba(233, 0, 0, 0.4);
		padding-top:17px;
		padding-left: 15px;
        font-size: 21px;
		border-radius: 4px;
		margin-left:15px;
		width:40%;
	}
</style>
<body>
	<div class="container-fluid">
			<div class="row" style="height:100%;">
				<div class="col-sm-3"style="background: rgba(213,0,0,.85);padding: 18px;">
					<center><h2 style="font-family: sans-serif;">Online Examination System</h2></center>
					<center><div class=" btn-group btn-group-vertical" style="margin-top: 110px;">
						<a class="btn btn-outline-warning btn-block btn-sm" href="adminPanel.jsp?pagepart=0"><h4>Profile</h4></a><br>
						<a class="btn btn-outline-warning btn-block btn-sm" href="adminPanel.jsp?pagepart=2"><h4>Courses</h4></a><br>
						<a class="btn btn-outline-warning btn-block btn-sm" href="adminPanel.jsp?pagepart=3"><h4>Questions</h4></a><br>
						<a class="btn btn-outline-warning active btn-block btn-sm" href="adminPanel.jsp?pagepart=1"><h4>Accounts</h4></a>
					</div></center>
				</div>
				
				<div class="col-sm-9" style="top: 100px;">
					<div style="background:grey;height:100%;">
						<div class="title"><h2>List Of All Registered Persons</h2></div>
						<a class="btn btn-danger btn-lg" style="float:right;margin-right:15px;color:white">Add New Person</a>
						<br>
						<br>
						<table class="table table-hover table-striped">
							<thead>
								<tr>
									<th scope="col">Name</th>
									<th scope="col">Email</th>
									<th scope="col">City</th>
									<th scope="col">Address</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
									ArrayList list=pDAO.getAllUsers();
									User user;
									for(int i=0;i<list.size();i++){
										user=(User)list.get(i);
										if(user.getUserId()!=Integer.parseInt(session.getAttribute("userId").toString())){
								%>
								<tr>
									<td><%= user.getFirstName()+" "+user.getLastName()%></td>
									<td><%= user.getEmail() %></td>
									<td><%= user.getCity() %></td>
									<td><%= user.getAddress() %></td>
									<td><a class="btn btn-danger" href="controller.jsp?page=accounts&operation=del&uid=<%=user.getUserId() %>"
											onclick="return confirm('Are you Sure?);">X</a></td>
								</tr>
								<%
										}
									}
								%>			
							</tbody>
						</table>
					</div>
				</div>
			</div>
	</div>
	
</body>
</html>