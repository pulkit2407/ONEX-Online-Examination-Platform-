<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="bootstrap/bootstrap.jsp"%>
 <style> 
.card {

  box-shadow: 10px 10px 5px grey;
}
</style>
</head>
<body>
	<div class="container mt-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header bg-success">
						<h1>Create Account</h1>
					</div>
					<div class="card-body">
					<div class="form group">
<form action="controller.jsp">
<input type="hidden" name="page" value="register"> 
	<label for="First Name"><i class="fa fa-user" aria-hidden="true"></i>First Name</label>
 <input type="text" class=" form-control"name="fName" placeholder="First Name" required>
 
 	<label for="Last Name"><i class="fa fa-user" aria-hidden="true"></i>Last Name</label>
 <input type="text" class=" form-control"name="lName" placeholder="Last Name" required>
 
 	<label for="User Name"><i class="fa fa-user" aria-hidden="true"></i>User Name</label>
 <input type="text" class=" form-control"name="uName" placeholder="User Name" required>
 
<label><i class="fa fa-envelope" aria-hidden="true"></i> Email </label> <input type="email" class=" form-control" name="email" placeholder="Enter Email" required>
 
<label><i class="fa fa-key" aria-hidden="true"></i> Password </label><input type="password" class=" form-control" name="pass" placeholder="Enter Password" required>


<label for="Contact no"><i class="fa fa-user" aria-hidden="true"></i>contact no</label>
 <input type="text" class=" form-control"name="contact" placeholder="contact no" required>

<label><i class="fa fa-home" aria-hidden="true"></i> City </label><input type="text" class=" form-control"name="city" placeholder="Enter city" required> <br>

<label><i class="fa fa-home" aria-hidden="true"></i> Address </label><input type="text" class=" form-control"name="address" placeholder="Enter Address" required> <br>
 
<div class="text-center">
<input  class="btn btn-primary" type="submit" Value="Create" name="create">
<a class="btn btn-success" href="login.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i> login</a>
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