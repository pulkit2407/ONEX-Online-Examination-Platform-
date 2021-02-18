<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
    <jsp:useBean id="pDAO2" class="database.add_delCourse" scope="page"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courses</title>
<%@include file="bootstrap/bootstrap.jsp"%>
</head>
<style>
	.title
	{
		background: linear-gradient(60deg, #ffa726, #fb8c00);
		box-shadow: 0 4px 20px 0px rgba(0, 0, 0, 0.14), 0 7px 10px -5px rgba(233, 0, 0, 0.4);
		padding-top:17px;
		padding-left: 10px;
        font-size: 21px;
		border-radius: 4px;
		margin-left:10px;
		width:50%;
	}
</style>
<body>

	<div class="container-fluid">
	
			<div class="row" style="height:100%;">
				<div class="col-sm-3"style="background: rgba(213,0,0,.85);padding: 18px;">
					<center><h2 style="font-family: sans-serif;">Online Examination System</h2></center>
					<center><div class=" btn-group btn-group-vertical" style="margin-top: 110px;">
						<a class="btn btn-outline-warning btn-block btn-sm" href="adminPanel.jsp?pagepart=0"><h4>Profile</h4></a><br>
						<a class="btn btn-outline-warning active btn-block btn-sm" href="adminPanel.jsp?pagepart=2"><h4>Courses</h4></a><br>
						<a class="btn btn-outline-warning btn-block btn-sm" href="adminPanel.jsp?pagepart=3"><h4>Questions</h4></a><br>
						<a class="btn btn-outline-warning btn-block btn-sm" href="adminPanel.jsp?pagepart=1"><h4>Accounts</h4></a>
					</div></center>
				</div>
				
				<div class="col-sm-9">
				<div class="row">
					<div class="col-sm-5"style="top: 100px;background:grey;height:auto;">
						<div class="title">Add New Course</div>
						<center>
							<form action="controller.jsp">
							 <td colspan="2"><input type="hidden" name="page" value="courses">
                    <input type="hidden" name="operation" value="addnew">
								<br>
								<table>
									<tr>
				                    	<td><label>Course Name</label></td>
				                        <td> <input type="text" name="coursename" class="form-control" placeholder="Course Name"  style="width: 230px;"></td>
				                    </tr>
			                        <tr>
			                            <td><label>Total Marks</label></td>
			                   			<td><input type="text" name="totalmarks" class="form-control" placeholder="Total Marks" style="width: 230px;" ></td>
			                        </tr>
			                        <tr>
			                            <td><label>Exam Time</label></td>
			                            <td><input type="text" name="time" class="form-control" placeholder="MM" style="width: 230px;"></td>
				                    </tr>

				                    <tr>
				                    <td colspan="2"><br>
        
                       					<center><input type="submit" class="btn btn-primary btn-block" value="Add" name="submit"></center></td>
                       				</tr>
								</table>
							</form>
						</center>
						<br>
					</div>	
					
					<div class="col-sm-7"style="top: 100px;background:blue;height:auto;" >
						<div class="title">All Courses</div>
						<table class="table table-hover table-striped">
							<thead>
								<tr>
									<th>Courses</th>
									<th>T.Marks</th>
									<th>Actions</th>
								</tr>
							</thead>
							<%
								ArrayList list=pDAO2.getAllCourses();
								for(int i=0;i<list.size();i+=2){
							%>
							<tr>
							<td><%=list.get(i)%></td>
							<td><%=list.get(i+1)%></td>
							<td><a class="btn btn-danger" href="controller.jsp?page=courses&operation=del&cname=<%=list.get(i) %>"onclick="return confirm('Are you Sure?);">X</a></td>
							</tr>
							<%
								}
							%>
							
						</table>
					</div>
					
				</div>
				</div>
			</div>
	</div>
</body>
</html>