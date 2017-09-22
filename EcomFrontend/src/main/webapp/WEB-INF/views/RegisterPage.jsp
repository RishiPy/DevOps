
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
   
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
<h3>Enter Your Details Here</h3>
<div class="col-lg-5">
<div class="row">

<f:form  modelAttribute="user" action="saveregister" method="post">  
<div class="col-lg-12">
<div class="form-group">
<f:input path="name" class="form-control" placeholder="Name"/>
</div>
<div class="form-group">
<f:input path="email" class="form-control" placeholder="Email" />
</div>

<div class="form-group">
<f:input path="password" type="password" class="form-control" placeholder="Password" />
</div>
<div class="form-group">
<f:input path="address"  class="form-control" placeholder="Address"/>
</div>
<div class="form-group">
<f:input path="phone" class="form-control" placeholder="Phone No" />
</div>

<div class="form-group">

<Button type="submit" class="btn btn-primary" style="width:220px" id="saveStudentButton">Submit</Button>
<Button type="reset" class="btn btn-danger" style="width:220px">Cancel</Button>

</div>

</div>
    		
</f:form>

</div>
</div>

</div>

</body>
</html>