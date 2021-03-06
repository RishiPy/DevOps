
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <jsp:include page="header.jsp"></jsp:include>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
<html>
<%@ page isELIgnored="false"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Product</title>



<style type="text/css">
.car{
padding-top:80px;
}


</style>
</head>
<body>
     
     <div class="car">
    <div class="container">    
        
 <form:form modelAttribute="cmd" method="post" action="/EcomFrontend/admin/Save" class="form-horizontal" enctype="multipart/form-data">
<fieldset>


<div class="form-group">
  <label class="col-md-4 control-label">Product Id </label>  
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
 
  <select  class="form-control" name="categoryid" id="proCat" required>
										<option value="">Category</option>
										<c:forEach items="${catlist}" var="cate">
										<option value="${cate.cid}">${cate.cname}</option>
										</c:forEach>
										
										</select>
   
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label">Supplier</label>
  <div class="col-md-4">
 
  <select  class="form-control"  id="proSup" name="supplierid"  required>
										<option value="">Supplier</option>
										<c:forEach items="${suplist}" var="supl">
										<option value="${supl.sid}">${supl.sname}</option></c:forEach>
										
										</select>
										
   
  </div>
</div>


	
<div class="form-group">
<label class="col-md-4"></label>		 
<div class="col-md-4">
<div class="fileinput fileinput-new">
									
									
										<input class="form-control" type="file" name="image" id="image" required >
											
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
        
        
   </div>
   </div>
        
        
        
        
        
        
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>