<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.ArrayList"%>
     <%@page import="entities.User" %>
      <jsp:useBean id="pDAO" class="database.adduser" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<%@include file="bootstrap/bootstrap.jsp"%>
</head>
<style>
	h2,h4 {color: white;
	
	}
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
	.card {

  box-shadow: 10px 10px 5px grey;
}
</style>
<body>

 <%
           User user=pDAO.getUserDetails(session.getAttribute("userId").toString());
 %>
       <div class="container-fluid ">
       		<div class="row">
<%
           if(user.getType().endsWith("admin"))
           {
 %>
				
					 <div class="col-sm-3 padding-0"style="background: rgba(213,0,0,.85);padding: 18px;">
						<center><h2 style="font-family: sans-serif;">Online Examination System</h2></center>
						<center>
							<div class=" btn-group btn-group-vertical" style="margin-top: 110px;margin-bottom: 210px;">
								<a class="btn btn-outline-warning active btn-block btn-sm" href="adminPanel.jsp?pagepart=0"><h4>Profile</h4></a><br>
								<a class="btn btn-outline-warning btn-block btn-sm" href="adminPanel.jsp?pagepart=2"><h4>Courses</h4></a><br>
								<a class="btn btn-outline-warning btn-block btn-sm" href="adminPanel.jsp?pagepart=3"><h4>Questions</h4></a><br>
								<a class="btn btn-outline-warning  btn-block btn-sm" href="adminPanel.jsp?pagepart=1"><h4>Accounts</h4></a>
							</div>
						</center>
					</div>
						
					
<% }
           else
           {
%>
				 <div class="col-sm-3 padding-0"style="background: rgba(213,0,0,.85);padding: 18px;">
					<center><h2 style="font-family: sans-serif;">Online Examination System</h2></center>
					<center>
						<div class=" btn-group btn-group-vertical" style="margin-top: 110px;margin-bottom: 210px;">
							<a class="btn btn-outline-warning active btn-block btn-sm" href="student.jsp?pagepart=0"><h4>Profile</h4></a><br>
							<a class="btn btn-outline-warning btn-block btn-sm" href="student.jsp?pagepart=2"><h4>Exam</h4></a><br>
							<a class="btn btn-outline-warning btn-block btn-sm" href="student.jsp?pagepart=3"><h4>Result</h4></a><br>
						</div>
					</center>
				</div>
			
<%
      }
     if(request.getParameter("pedt")==null){
%>	
		<div class="card" style="width: 70%;margin-left:20px;height:50%;">
              <div class="title card-header"><center>Profile</center></div>
           	  <div class="card-body">
           	  		<table class="table table-striped table-hover"> <tr><td>Name</td><td><%=user.getFirstName()+" " %><%=user.getLastName() %></td></tr>
           	  		<tr><td>Email</td><td><%=user.getEmail() %></td></tr>
           	  		<tr><td>UserName</td><td><%=user.getUserName() %></td></tr>
           	  		<tr><td>Contact No</td><td><%=user.getContact() %></td></tr>
           	  		<tr><td>City</td><td><%=user.getCity() %></td></tr>
           	  		<tr><td>Address</td><td><%=user.getAddress() %></td></tr>
           	  		</table>
           	  	<%
               if(user.getType().equals("admin")){
               %><button class="btn btn-primary"data-toggle="modal" data-target="#exampleModalCenter">Edit profile</button>
                <% 
               }else{
               %><a class="btn btn-primary" href="student.jsp?pgprt=0&pedt=1">Edit profile</a>
               <% 
               			}
     }
               %>
           </div>
			</div>
					
	</div>
	
				
				<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				  <div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Edit Profile</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      
				   <form action="controller.jsp">
				      <div class="modal-body">
                        <input type="hidden" name="page" value="profile"> 
                        <input type="hidden" name="utype" value="<%=user.getType()%>">
				<table class="table table-striped table-hover">
					
					<tr>
						<td>
							<label>First Name</label>
						</td>
						<td>
                                                    <input type="text" name="fname" value="<%=user.getFirstName() %>" class="form-control" placeholder="First Name">
						</td>
					</tr>
					<tr>
						<td>
							<label>Last Name</label>
						</td>
						<td>
                                                    <input type="text"  name="lname" value="<%=user.getLastName() %>" class="form-control" placeholder="Last Name">
						</td>
					</tr>
					
					<tr>
						<td>
							<label>User Name</label>
						</td>
						<td>
                                                    <input type="text" name="uname" value="<%=user.getUserName() %>" class="form-control" placeholder="User Name">
						</td>
					</tr>
					<tr>
						<td>
							<label>Email</label>
						</td>
						<td>
                                                    <input type="email" name="email" value="<%=user.getEmail() %>" class="form-control" placeholder="Email">
						</td>
					</tr>
					
					<tr>
						<td>
							<label>Password</label>
						</td>
						<td>
                                                    <input type="password" value="<%=user.getPassword() %>" name="pass" class="form-control" placeholder="Password">
						</td>
					</tr>
                                        <tr>
						<td>
							<label>Contact No</label>
						</td>
						<td>
                                                    <input type="text" name="contactno" value="<%=user.getContact() %>" class="form-control" placeholder="Contact No">
						</td>
					</tr>
                                        <tr>
						<td>
							<label>City</label>
						</td>
						<td>
                                                    <input type="text" name="city" value="<%=user.getCity() %>" class="form-control" placeholder="City">
						</td>
					</tr>
                                        <tr>
						<td>
							<label>Address</label>
						</td>
						<td>
                                                    <input type="text" name="address" value="<%=user.getAddress() %>" class="form-control" placeholder="Address">
						</td>
					</tr>
				</table>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				        <button type="submit" class="btn btn-primary">Save changes</button>
				      </div>
				     </form> 
				    </div>
				  </div>
				</div>
				
	
	         
</div>    
           
				
</body>
</html>