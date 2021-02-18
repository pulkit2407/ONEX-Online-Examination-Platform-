<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="pDAO" class="database.add_delCourse" scope="page"/>
    
<!DOCTYPE html>
<html>
<head>

<%@include file="bootstrap/bootstrap.jsp"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		width:70%;
	}
	.card {

  box-shadow: 10px 10px 5px grey;
}
</style>
<body>
<div class="container-fluid ">
       		<div class="row">
					 <div class="col-sm-3 padding-0"style="background: rgba(213,0,0,.85);padding: 18px;">
						<center><h2 style="font-family: sans-serif;">Online Examination System</h2></center>
						<center>
							<div class=" btn-group btn-group-vertical" style="margin-top: 110px;margin-bottom: 210px;">
								<a class="btn btn-outline-warning  btn-block btn-sm" href="adminPanel.jsp?pagepart=0"><h4>Profile</h4></a><br>
								<a class="btn btn-outline-warning btn-block btn-sm" href="adminPanel.jsp?pagepart=2"><h4>Courses</h4></a><br>
								<a class="btn btn-outline-warning active btn-block btn-sm" href="adminPanel.jsp?pagepart=3"><h4>Questions</h4></a><br>
								<a class="btn btn-outline-warning  btn-block btn-sm" href="adminPanel.jsp?pagepart=1"><h4>Accounts</h4></a>
							</div>
						</center>
					</div>
					
			<div class="col-sm-9">
				<div class="row">
					<div class="col-sm-5"style="top: 100px;height:auto;">
						<div class="card">
						 <form action="adminPanel.jsp">
							<div class="title card-header">Show all Questions</div>
						
                				<input type="hidden" name="pagepart" value="4">
                				
                			<div class="card-body">
                				<select name="coursename" class="form-control" style="font-size: 20px;">
                			<option style="font-size: 20px;">Select Courses</option>	
					 	<% 
					            ArrayList list1=pDAO.getAllCourses();
					            
					            for(int i=0;i<list1.size();i=i+2){
				        %>
					        <option value="<%=list1.get(i)%>" style="font-size: 20px;"><%=list1.get(i)%></option>
			            <%
				            }
			            %>
				            </select>
				            <br>
				            <div class="card-footer">
					            <button type="submit" value="Show" class="form-button btn btn-block btn-primary">Show</button>
					       </div>
					       </div>
					    </form>
						</div>
						<br>
					</div>	
					
					<div class="col-sm-7"style="top: 100px;height:auto;">
						<div class="card">
							<form action="controller.jsp" >
			                   <div class="title card-header">Add New Question</div>
			                   <div class="card-body">
			                   <table >
			                       <tr>
			                           <td><label>Course Name</label></td>
			                           <td colspan="3"> 
			                               <select name="coursename" class="form-control" style="font-size: 20px;">
			        <% 
			            ArrayList list=pDAO.getAllCourses();
			            
			            for(int i=0;i<list.size();i=i+2){
			        %>
			        <option value="<%=list.get(i)%>"><%=list.get(i)%></option>
			            <%
			            }
			            %>
			            </select>
			                           </td>
			                       </tr>
			                       <tr>
			                           <td><label>Your Question:</label></td>
			                           <td colspan="4"><input type="text" name="question" class="form-control" placeholder="Type your question here"></td><br>
			                       </tr>
			                       <tr>
			                           <td><label>Options</label></td>
			                           <td><input type="text" name="opt1" class="form-control" placeholder="First Option"></td>
			                           <td><input type="text" name="opt2" class="form-control" placeholder="Second Option"></td>
			                           <td><input type="text" name="opt3" class="form-control" placeholder="Third Option"></td>
			                           <td><input type="text" name="opt4" class="form-control" placeholder="Fourth Option"></td>
			                       </tr>
			                       <tr>
			                           <td><label>Correct Answer</label></td>
			                           <td colspan="4"><center><input type="text" name="correct" class="form-control" placeholder="Correct Answer"></center></td>
			                       <tr>
			                           <td colspan="5"><input type="hidden" name="page" value="questions">
			                    <input type="hidden" name="operation" value="addnew">
			                       <center><button type="submit" class="btn btn-block btn-outline-primary" value="Add" name="submit">ADD</button></center></td>
			                           
			                   </tr>
			                   </table>
			</div>
			                </form>
			           
						</div>
					</div>
				</div>
				</div>
</div>
</div>
</body>
</html>