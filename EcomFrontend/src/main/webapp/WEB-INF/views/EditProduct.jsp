
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
<html>
<%@ page isELIgnored="false"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Product</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
     
        
        
 <form:form modelAttribute="cmd" method="post" action="/EcomFrontend/Save" class="form-horizontal" enctype="multipart/form-data">
<fieldset>


<div class="form-group">
  <label class="col-md-4 control-label">Product Id :</label>  
  <div class="col-md-4">
 <form:input  path="id"  readonly="true" style="border:none" class="form-control" />
    
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label">Product Name</label>  
  <div class="col-md-4">
 <form:input path="productName"  class="form-control" />
    
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label" >Product Quantity</label>  
  <div class="col-md-4">
  <form:input path="productQuantity"  class="form-control"/>
    
  </div>
</div>

                
<div class="form-group">
  <label class="col-md-4 control-label">Product Description</label>  
  <div class="col-md-4">
  <form:input path="productDesc" class="form-control"/>
    
  </div>
</div>



<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Product Price</label>  
  <div class="col-md-4">
 <form:input path="productPrice" class="form-control" />
    
  </div>
</div>



 

<div class="form-group">
  <label class="col-md-4 control-label">Category</label>
  <div class="col-md-4">
 
  <select  class="form-control" name="categoryid" id="proCat">
										<option value="0">Category</option>
										<c:forEach items="${catlist}" var="cate">
										<option value="${cate.cid}">${cate.cname}</option>
										</c:forEach>
										
										</select>
   
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label">Supplier</label>
  <div class="col-md-4">
 
  <select  class="form-control"  id="proSup" name="supplierid">
										<option value="0">Supplier</option>
										<c:forEach items="${suplist}" var="supl">
										<option value="${supl.sid}">${supl.sname}</option></c:forEach>
										
										</select>
										
   
  </div>
</div>


	
<div class="form-group">
<label class="col-md-4"></label>		 
<div class="col-md-4">
<div class="fileinput fileinput-new">
									
									
										<input class="form-control" type="file" name="image" id="image" >
											
									</div>
</div>
</div>



<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4 ">
    <button id="submit" name="submit" class="btn btn-primary">SAVE</button>
  </div>
</div>

















</fieldset>
</form:form>
        
        
   
        
        
        
        
        
        
</body>
</html>