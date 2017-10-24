
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="header.jsp"></jsp:include>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
   
<!DOCTYPE html>

   
<html>
<head>
<style>

 body  {
    background: url("resources/images/backi.jpg") no-repeat center center fixed;
     -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
   
}
  
.car{
padding-top:60px;
}


.form_bg {
    
    color:black;
    padding:20px;
    
    position: relative;
    
    margin:0
     auto;
    top: 3;
    right: 0;
    bottom: 90;
    left: 700;
    width: 320px;
    height: 280px;
}

.align-center {
    
color: white;

font-weight: bold;
    text-align:center;
}


 
</style>
</head>
<body>

<div class="car">
<div class="container">
    <div class="row">
        <div class="form_bg">
        
            <f:form  modelAttribute="user" action="saveregister" method="post">
                 <h2 class="text-center">Register Here</h2>
                 
                <br/>
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

                    <br/>
                   <div class="align-center">
                   
                <center> <button type="submit" class="btn btn-danger" style="width:90px"  id="saveStudentButton">Register</button>
                <Button type="reset" class="btn btn-default" style="width:90px">Clear</Button>
                </center>
                
                    </div>
                   
           </f:form>
        </div>
    </div>
</div>
</div>


















</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>