<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

<jsp:include page="footer.jsp"></jsp:include>

<div class="container ">
<h1>Enter Your Details Here</h1>
<div class="col-lg-12">
<div class="row">

<f:form modelAttribute="user" action="saveregister" method="post">
<div class="col-lg-12">
<div class="form-group">
<f:input path="first_name" class="form-control" placeholder="FirstName"/>
</div>
<div class="form-group">
<f:input path="last_name" class="form-control" placeholder="LastName" />
</div>

<div class="form-group">
<f:input path="email" class="form-control" placeholder="EmailAddress" />
</div>
<div class="form-group">
<input path="phone"  class="form-control" placeholder="PhoneNumber"   />
</div>
<div class="form-group">
<f:input path="address" class="form-control" placeholder="address" />
</div>
<div class="form-group">
<input path="password" class="form-control" placeholder="Password"  />
</div>
	
<input type="submit" value="Register" class="btn btn-success btn-block">
</div>    		
</f:form>
</div>
</div>
</div>

<jsp:include page="header.jsp"></jsp:include>


</body>
</html>