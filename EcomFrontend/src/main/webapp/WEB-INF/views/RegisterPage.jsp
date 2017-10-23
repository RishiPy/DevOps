
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
   
<html>
<head>
<style>
.car{
padding-top:60px;
}
body  {
    background: url("resources/images/12.png") no-repeat center center fixed;
     -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
   
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="car">
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

<Button type="submit" class="btn btn-danger" style="width:220px" id="saveStudentButton">Submit</Button>
<Button type="reset" class="btn btn-default" style="width:220px">Clear</Button>

</div>

</div>
    		
</f:form>

</div>
</div>

    		  		
<img src="resources/images/cusp.gif" style="width:320px; height:281px;" />
  		


</div>









</div>
<br>
<br>
<br>
<br>
<br>

<marquee behavior="scroll" direction="left">Register And Get Best Deals Only For You <strong>OffersBuy More, Save More Get 50% Discount On Mens Apparels</strong></marquee>


</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>