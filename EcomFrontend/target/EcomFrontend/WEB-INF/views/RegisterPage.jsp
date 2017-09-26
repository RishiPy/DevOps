
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
   
<html>
<head>

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
<f:errors path="name" cssStyle="color: #ff0000;"/>

</div>
<div class="form-group">
<f:input path="email" class="form-control" placeholder="Email" />
<f:errors path="email" cssStyle="color: #ff0000;"/>
</div>

<div class="form-group">
<f:input path="password" type="password" class="form-control" placeholder="Password" />
<f:errors path="password" cssStyle="color: #ff0000;"/>
</div>
<div class="form-group">
<f:input path="address"  class="form-control" placeholder="Address"/>
<f:errors path="address" cssStyle="color: #ff0000;"/>
</div>
<div class="form-group">
<f:input path="phone" class="form-control" placeholder="Phone No" />
<f:errors path="phone" cssStyle="color: #ff0000;"/>
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