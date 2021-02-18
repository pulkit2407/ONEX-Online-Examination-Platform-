<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login </title>
<%@include file="bootstrap/bootstrap.jsp"%>
<style>
.card {

  box-shadow: 10px 10px 5px grey;
}
</style>
</head>
<body>
	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header bg-success">
						<h1>Login </h1>
					</div>
					<div class="card-body">
					
	<form action="controller.jsp" method="post">
	<input type="hidden" name="page" value="login"> 
					<div class="form-group">
						<label for="username"><i class="fa fa-user" aria-hidden="true"></i>  Username</label>
				 <input type="text" class="form-control" name="username" placeholder="Enter username"required>
				 </div>
				 <div class="form-group">
				 <label for="password"><i class="fa fa-key" aria-hidden="true"></i> Password</label>
				 <input type="password" class="form-control" name="password"  placeholder="Enter password" required>
				 </div>
				 
				 <div class="text-center">
				 	<center>
							<input type="submit" value="Login" class="btn btn-primary">
							<a class="btn btn-danger" href="signup.jsp">SignUp</a>
					</center>
				</div>
				
				<% 
                    if(request.getSession().getAttribute("userStatus")!=null){
                        System.out.println("its called");
                  	if(request.getSession().getAttribute("userStatus").equals("-1")){  
                      System.out.println("now inside");
                %>
                            <script>alert("username or password is incorrect");</script>
               <%
 	                 }
                    }
                 %>
                                                    



</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>