<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


   
   
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>


<div class="container ">
<h1>Enter Products Here</h1>
<div class="col-lg-6">
<div class="row">

<f:form modelAttribute="product" action="saveProduct" method="post" enctype="multipart/form">
<div class="col-lg-12">

<div class="form-group">
<f:input path="productName" class="form-control" placeholder="Product Name" />
</div>

<div class="form-group">
<f:input path="productQuantity"  class="form-control" placeholder="Stock"   />
</div>
<div class="form-group">
<f:input path="productDesc" class="form-control" placeholder="Description" />
</div>
<div class="form-group">
<f:input path="productPrice" class="form-control" placeholder="Price"  />
</div>
<div class="fileinput fileinput-new" data-provides="fileinput">
<input class="form-control" type="file" name="file" accept="image/*" placeholder="Select image">

</div>	
	
<input type="submit" value="Add" class="btn btn-success btn-block">
</div>    		
</f:form>
</div>
</div>
</div>




</body>
</html>